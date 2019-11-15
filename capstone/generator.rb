# frozen_string_literal: true

require 'i18n'

I18n.load_path += Dir[File.join( __dir__, 'dummy-data', '*.yml')]

module Generator

  class Engine
    
    class << self

      def parse(key)
        # FETCH
      end

      def fetch(key)
        # FETCH
      end
    end
  end
end

# This line registers all of the generators
Dir.glob(File.join(File.dirname(__FILE__), 'generators', '*.rb')).sort.each { |file| require file }
