module DBSeeder
  class Grade < Generator
    class << self
      def grade_letter
        fetch('grade.letter')
      end
    end
  end
end
