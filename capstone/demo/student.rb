# frozen_string_literal: true

# student.rb

require_relative 'student'

class Student
  attr_accessor :username

  def initialize(username)
    @username = username
  end
end