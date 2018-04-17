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
    result = {success: true, error: nil}
    employees = CSV.read(filename)
      employees.map do |employee|
        if employee.length == 5
      result[:id] = employee[0]
      result[:name] = employee[1]
      result[:role] = employee[2]
      result[:start_date] = employee[3]
      result[:end_date] = employee[4]
    else
      result[:success] = false
      result[:error] = 'bad data'
      end
    end
    result
  end

end
