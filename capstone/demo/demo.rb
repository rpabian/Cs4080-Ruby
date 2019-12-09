# frozen_string_literal: true

# demo.rb
require File.expand_path(File.dirname(__FILE__) + '/../dbseeder')

require_relative 'course'
require_relative 'student'

def test_run
  students = []
  # Create Students
  5.times do
    students.push(Student.new(DBSeeder::Username.user_name + DBSeeder::Username.user_number))
  end

  students.each do |student|
    print 'My username is ', student.username, "\n"
  end
end


test_run