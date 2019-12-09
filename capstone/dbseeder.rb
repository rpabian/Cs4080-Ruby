# frozen_string_literal: true

require 'i18n'

I18n.load_path += Dir[File.join(__dir__, 'dummy-data', '**/*.yml')]
I18n.reload! if I18n.backend.initialized?

module DBSeeder
  class Generator
    class << self
      # Adapted from https://github.com/faker-ruby/faker/blob/035b3aaa7aa04b678c7df0589f67a7fe0a10cc6b/lib/faker.rb
      def sample(list)
        list.respond_to?(:sample) ? list.sample(random: Random::DEFAULT) : list
      end

      def parse(key)
        # PARSE KEYWORD ARGS FIRST
        # Adapted from https://github.com/faker-ruby/faker/blob/035b3aaa7aa04b678c7df0589f67a7fe0a10cc6b/lib/faker.rb#L124

        fetched = fetch(key)
        parts = fetched
                .scan(/(\(?)#\{([A-Za-z]+\.)?([^\}]+)\}([^#]+)?/)
                .map do |prefix, my_class, method, etc|
          cls = my_class ? DBSeeder.const_get(my_class.chop) : self
          text = prefix

          text += if cls.respond_to?(method)
                    cls.send(method)
                  else
                    key_path = cls.to_s.split('::')
                                  .last.gsub(/([a-z\d])([A-Z])/, '\1_\2').downcase
                    fetch("#{key_path}.#{method.downcase}")
                  end

          # And tack on spaces, commas, etc. left over in the string
          text + etc.to_s
        end

        parts.join 
      end

      def fetch(key)
        # FETCH RANDOM ITEM FROM GIVEN ARRAY
        sample(I18n.translate("generator.#{key}"))
      end
    end
  end
end

# This line registers all of the generators
Dir.glob(File.join(File.dirname(__FILE__), 'generators', '*.rb'))
   .sort.each { |file| require file }
