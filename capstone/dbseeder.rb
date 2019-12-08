# frozen_string_literal: true

require 'i18n'

I18n.load_path += Dir[File.join(__dir__, 'dummy-data', '**/*.yml')]
I18n.reload! if I18n.backend.initialized?

module DBSeeder

  class Generator

    class << self

      def parse(key)
        # PARSE KEYWORD ARGS FIRST
        # Adapted from https://github.com/faker-ruby/faker/blob/035b3aaa7aa04b678c7df0589f67a7fe0a10cc6b/lib/faker.rb#L124
        fetched = fetch(key)
        parts = fetched.scan(/(\(?)#\{([A-Za-z]+\.)?([^\}]+)\}([^#]+)?/).map do |prefix, class, method, etc|
        # If the token had a class Prefix (e.g., Name.first_name)
        # grab the constant, otherwise use self
        cls = class ? DBSeeder.const_get(class.chop) : self

        # If an optional leading parentheses is not present, prefix.should == "", otherwise prefix.should == "("
        # In either case the information will be retained for reconstruction of the string.
        text = prefix

        # If the class has the methodod, call it, otherwise fetch the transation
        # (e.g., faker.phone_number.area_code)
        text += if cls.respond_to?(method)
          cls.send(method)
        else
          # Do just enough snake casing to convert PhoneNumber to phone_number
          key_path = cls.to_s.split('::').last.gsub(/([a-z\d])([A-Z])/, '\1_\2').downcase
          fetch("#{key_path}.#{method.downcase}")
        end

        # And tack on spaces, commas, etc. left over in the string
        text + etc.to_s
      end

      parts.join
    end

    def fetch(key)
      # FETCH RANDOM ITEM FROM GIVEN ARRAY
      translation = I18n.translate("generator.#{key}")
      fetched = translation.sample(random: Random::DEFAULT)
    end
  end
end
end

# This line registers all of the generators
Dir.glob(File.join(File.dirname(__FILE__), 'generators', '*.rb')).sort.each { |file| require file }
