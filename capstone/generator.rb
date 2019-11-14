# frozen_string_literal: true

mydir = __dir__

module Generator

  class Main
    # DEFINE GLOBAL ALPHABET FOR GENERATOR (LETTERS, NUMBERS)

    class << self

      def numerify(number_string)
        # GENERATE A STRING OF DIGITS FROM A GIVEN STRING
      end

      def letterify(letter_string)
        # GENERATE A STRING OF LETTERS FROM THE GIVEN STRING
      end

      def alphanumerify(string)
        # GENERATE AN ALPHANUMERIC STRING FROM THE GIVEN STRING
      end

      def generate(key)
        # GENERATE THE RANDOM VALUE
      end

      def rand(max = nil)
        # RANDOM FUNCTION
      end

      def rand_in_range(from, to)
        # SAMPLE (GRAB A RANDOM ELEMENT) FROM THE GIVEN RANGE
      end

      def randomize(value)
        # RANDOMIZE GIVEN VALUE IF POSSIBLE
      end

      def sample(list)
        # SAMPLE FUNCTION (GRAB RANDOM ELEMENT FROM ARRAY)
      end

      def shuffle(list)
        # SHUFFLE FUNCTION
      end
    end
  end
end

# This line registers all of the generators
Dir.glob(File.join(File.dirname(__FILE__), 'generators', '/**/*.rb')).sort.each { |file| require file }
