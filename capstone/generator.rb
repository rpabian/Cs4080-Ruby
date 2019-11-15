# frozen_string_literal: true

module Generator

  class Engine

    class << self

      def parse(key)
        # PARSE KEYWORD ARGS FIRST
      end

      def fetch(key)
        # FETCH RANDOM ITEM FROM GIVEN ARRAY
      end
    end
  end
end

# This line registers all of the generators
Dir.glob(File.join(File.dirname(__FILE__), 'generators', '*.rb')).sort.each { |file| require file }
