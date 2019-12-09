# frozen_string_literal: true

module DBSeeder
  class Course < Generator
    class << self
      def course_subject
        fetch('course.subject')
      end

      def course_number
        (Array.new(1) { |_| sample(leading) } +
            Array.new(3) { |_| sample(digits) }).join
      end

      def leading
        %w[1 2 3]
      end

      def digits
        %w[0 1 2 3 4 5 6 7 8 9]
      end
    end
  end
end
