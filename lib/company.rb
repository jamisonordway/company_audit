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

  def load_projects(filename)
    result = {success: true, error: nil}
    projects = CSV.read(filename)
      projects.map do |project|
        if project.length == 4
      result[:id] = project[0]
      result[:name] = project[1]
      result[:start_date] = project[2]
      result[:end_date] = project[3]
    else
      result[:success] = false
      result[:error] = 'bad data'
      end
    end
    result
  end

  def load_timesheets
    result = {success: true, error: nil}
    timesheets = CSV.read(filename)
      timesheets.map do |timesheet|
        if timesheet.length == 5
      result[:employee_id] = timesheet[0]
      result[:project_id] = timesheet[1]
      result[:date] = timesheet[2]
      result[:end_date] = timesheet[3]
    else
      result[:success] = false
      result[:error] = 'bad data'
      end
    end
    result
  end
end
