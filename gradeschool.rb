class School
  def initialize
    @students = Hash.new([].freeze)
  end
  def students(grade)
    @students[grade]
  end
  def students_by_grade
    @students.keys.sort.map { |grade| { grade: grade, students: @students[grade] } }
  end
  def add(student, grade)
    @students[grade] = (@students[grade] + [student]).sort
  end
end