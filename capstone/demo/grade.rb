# frozen_string_literal: true

class Grade
  attr_accessor :letter_grade, :course_num

  def initialize(letter_grade, course_num)
    @letter_grade = letter_grade
    @course_num = course_num
  end
end