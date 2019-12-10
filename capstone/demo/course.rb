# frozen_string_literal: true

# course.rb

class Course
  attr_accessor :subject, :number

  def initialize(subject, number)
    @subject = subject
    @number = number
  end
end
