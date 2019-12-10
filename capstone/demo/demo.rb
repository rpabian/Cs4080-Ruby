# frozen_string_literal: true

# demo.rb
require File.expand_path(File.dirname(__FILE__) + '/../dbseeder')

require_relative 'course'
require_relative 'student'
require_relative 'grade'

def test_run
  courses = []
  students = []
  grades = []

  # Create Courses
  5.times do
    courses.push(Course.new(DBSeeder::Course.course_subject, DBSeeder::Course.course_number))
  end

  # Create Students
  5.times do
    students.push(Student.new(DBSeeder::Username.user_name + DBSeeder::Username.user_number))
  end

  # Create Grades
  5.times do
    grades.push(Grade.new(DBSeeder::Grade.grade_letter, DBSeeder::Grade.course_number ));
  end

  # Seed Database
  students.each do |student|
    puts "My username is #{student.username}"
  end

  puts "\nCourse Catalog\n========="
  courses.each do |course|
    puts "#{course.subject} #{course.number}"
  end

  puts "\nAverage per Course\n========="
  grades.each do |grade|
    puts "CS #{grade.course_num}: #{grade.letter_grade}"
  end
end


test_run