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
  print 'My username is ', DBSeeder::Username.user_name, DBSeeder::Username.user_number, "\n"
  print 'Every ', day.day_of_week, ", I have these courses: \n"
  day.courses.each do |course|
    print course.subject, ' ', course.number
  end
end

test_run