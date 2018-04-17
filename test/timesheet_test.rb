require './test/test_helper'
require './lib/timesheet'
require './modules/date_handler'
require 'date'

class EmployeeTest < Minitest::Test

  def setup
    @timesheet = Timesheet.new('5', '123', '2015-01-01', '120')
  end

  def test_instantiation
    assert_instance_of Timesheet, @timesheet
  end

  def test_attributes
    assert_instance_of Integer, @timesheet.employee_id
    assert_instance_of Integer, @timesheet.project_id
    assert_instance_of Date, @timesheet.date('2015-01-01')
    assert_instance_of Integer, @timesheet.minutes
  end
end
