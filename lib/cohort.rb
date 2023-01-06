class Cohort
  attr_accessor :id, :name, :starting_date

  def initialize
    @students = []
  end

  def ==(other)
    [@id, @name, @starting_date] == [
     other.id, other,name, other.starting_date]
  end
end