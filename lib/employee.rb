
class Employee
  attr_reader :id,
              :name,
              :role,
              :dh

  def initialize(id, name, role, start_date, end_date)
    @id = id.to_i
    @name = name
    @role = role
    @start_date = start_date
    @end_date = end_date
  end

  def start_date(start_date)
    DateHandler.string_to_date(start_date)
  end

  def end_date(end_date)
    DateHandler.string_to_date(end_date)
  end

end
