require 'csv'
require './lib/employee'
class Company
  attr_reader :employees,
              :projects,
              :timesheets
  def initialize
    @employees = []
    @projects = []
    @timesheets = []
  end

  def load_employees(filename)
    attributes = CSV.read(filename).collect do |argument|
      Employee.new *argument
    end
    binding.pry
  end
end
