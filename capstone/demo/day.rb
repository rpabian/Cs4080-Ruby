# frozen_string_literal: true

# day.rb

require_relative 'course'

class Day
  attr_accessor :day_of_week, :courses

  def initialize(day_of_week)
    @day_of_week = day_of_week
    @courses = []
  end
end