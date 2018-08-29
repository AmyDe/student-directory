def input_students
  puts "Please enter the student's name:"
  name = gets.chomp
  puts "Please enter the cohort month:"
  puts "(To finish, hit return twice)"
  students = []
  
  while !name.empty?
    cohort = gets.chomp
    cohort = "Forever" if cohort.empty?
    students << {name: name, cohort: cohort}
    puts "Now we have #{students.count} students"
    name = gets.chomp
  end
  students
end

def print_header
  puts "The Students of Villains Academy".center(50)
  puts "-------------".center(50)
end

def print_names(student_data)

student_cohort = {}

student_data.each { |stu|
  cohort_group = stu[:cohort]
  
    if student_cohort[cohort_group] == nil
      student_cohort[cohort_group] = []
    end
    student_cohort[cohort_group].push(stu[:name])
    }

student_cohort.each { |cohort, name|
  puts "Cohort Month #{cohort}:"
  puts name
  }

end

def print_footer(names)
  puts "Overall, we have #{names.count} great students".center(50)
end

students = input_students
print_header
print_names(students)
print_footer(students)