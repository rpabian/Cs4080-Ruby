module DBSeeder
  class Grade < Generator
    class << self
      def grade_letter
        fetch('grade.letter')
      end

      def course_number
        Array.new(3) { |_| sample(digits) }).join
      end
      def digits
        %w[0 1 2 3 4 5 6 7 8 9]
      end
    end
  end
end
