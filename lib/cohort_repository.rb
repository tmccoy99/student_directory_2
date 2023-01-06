class CohortRepository

  def find_with_students(id)
    query = "SELECT cohorts.name AS cohort_name,
             cohorts.starting_date,
             students.id AS student_id,
             students.name AS student_name
             FROM cohorts JOIN students
             ON cohorts.id = students.cohort_id
             WHERE cohorts.id = $1"
    result = DatabaseConnection.exec_params(query, [id])

    cohort = Cohort.new
    cohort.id = id
    cohort.name = result.first["cohort_name"]
    cohort.starting_date = result.first["starting_date"]
    
    cohort.students = result.map do |record|
      student = Student.new
      student.id = record["student_id"].to_i
      student.name = record["student_name"]
      student.cohort_id = id
      student
    end

    cohort
  end

end
