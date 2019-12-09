# frozen_string_literal: true

module DBSeeder
  class Username < Generator
    class << self
      def user_name
        fetch('username.usernameList')
      end

      def user_number
        Array.new(3) { |_| fetch(digits) }.join
      end

      def digits
        %w[0 1 2 3 4 5 6 7 8 9]
      end
    end
  end
end
