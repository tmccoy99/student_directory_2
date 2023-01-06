class Student
  attr_accessor :id, :name, :cohort_id

  def ==(other)
    [@id, @name, @cohort_id] == [other.id, other.name, other.cohort_id]
  end
end
