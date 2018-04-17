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
    assert_instance_of Hash, @company.load_employees('./data/employees.csv')

    expected = {:success =>false, :error =>'bad data'}
    assert_equal expected, @company.load_employees('./data/bad_employees.csv')
  end

  def test_it_can_load_projects
    assert_instance_of Hash,
    @company.load_projects('./data/projects.csv')
  end

  def test_it_can_load_timesheets
    assert_instance_of Hash, @company.load_timesheets('./data/timesheets.csv')
  end
end
