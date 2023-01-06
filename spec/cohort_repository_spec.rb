require "cohort_repository"
require "cohort"
require "student"

describe CohortRepository do

  before(:each) do
    @repo = CohortRepository.new
    @cohort = Cohort.new
    @cohort.name = "Second" ; @cohort.starting_date = "2020-11-30"
    @cohort.id = 2
    @student1 = Student.new ; @student2 = Student.new
    @student1.name = "Jeff" ; @student2.name = "Mark"
    @student1.id = 3 ; @student2.id = 4
    @student1.cohort_id = 2 ; @student2.cohort_id = 2
  end

  context "#find_with_students given integer argument" do
    it "returns cohort with corresponding id" do
      expect(@repo.find_with_students(2)).to eq @cohort
    end

    it "returned cohort contains array of students" do
      expect(@repo.find_with_students(2).students).to eq [
      @student_1, @student_2]
    end
  end

end