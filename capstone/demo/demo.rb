# frozen_string_literal: true

# demo.rb
require File.expand_path(File.dirname(__FILE__) + '/../dbseeder')

require_relative 'course'
require_relative 'day'
require_relative 'student'

def test_run
  # student = Student.new()
  course = Course.new(DBSeeder::Course.course_subject, DBSeeder::Course.course_number)
  day = Day.new('Monday')
  day.courses.push(course)

  puts 'Hi, my name is Billy Bronco.'
  puts 'Every ' + day + ', I have these courses:'
  puts day.courses
end

test_run