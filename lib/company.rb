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
    result = {success: true, error: nil, id: nil, name: nil, role: nil, start_date: nil, end_date: nil}
    employees = CSV.read(filename)
    if employees != nil
      employees.map do |employee|
      result[:id] = employee[0]
      result[:name] = employee[1]
      result[:role] = employee[2]
      result[:start_date] = employee[3]
      result[:end_date] = employee[4]
    end
    else
      result[:success] = false
      result[:error] = 'bad data'
      binding.pry
  end
  end
end
