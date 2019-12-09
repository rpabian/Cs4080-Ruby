# frozen_string_literal: true

# demo.rb
require File.expand_path(File.dirname(__FILE__) + '/../dbseeder')

require_relative 'course'
require_relative 'student'

def test_run
  courses = []
  students = []

  # Create Courses
  5.times do
    courses.push(Course.new(DBSeeder::Course.course_subject, DBSeeder::Course.course_number))
  end


  # Create Students
  5.times do
    students.push(Student.new(DBSeeder::Username.user_name + DBSeeder::Username.user_number))
  end

  students.each do |student|
    puts "My username is #{student.username}"
  end

  puts "Course Catalog\n========="
  courses.each do |course|
    puts "#{course.subject} #{course.number}"
  end
end


test_run