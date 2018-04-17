require './test/test_helper'
require './lib/company'
require 'date'
require 'pry'

class CompanyTest < Minitest::Test

  def setup
    @company = Company.new
  end

  def test_it_exists
    assert_instance_of Company, @company
  end

  def test_it_starts_with_empty_attributes
    assert_equal [], @company.employees
    assert_equal [], @company.projects
    assert_equal [], @company.timesheets
  end

  def test_it_can_load_employees
    assert_instance_of Array, @company.load_employees('./data/employees.csv')
  end
end
