# frozen_string_literal: true

# student.rb

require_relative 'student'

class Student
  attr_reader :first_name, :last_name
  attr_accessor :schedule

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name = last_name
    @schedule = []
  end
end