require './test/test_helper'
require './lib/employee'


class EmployeeTest < Minitest::Test

  def setup
    @employee = Employee.new('5', 'Sally Jackson',
    'Engineer', '2015-01-01', '2018-01-01')
  end

  def test_instantiation
    assert_instance_of Employee, @employee
  end

  def test_attributes
    assert_equal Integer, @employee.id.class
    assert_equal 'Sally Jackson', @employee.name
    assert_equal 'Engineer', @employee.role
    assert_equal Date, @employee.start_date.class
    assert_equal Date, @employee.end_date.class
  end
end
