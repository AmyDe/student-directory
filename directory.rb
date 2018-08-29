def input_students
  puts "Please enter the student's names:"
  puts "To finish, hit return twice"
  students = []
  name = gets.chomp
  while !name.empty?
    students << {name: name, cohort: :November}
    puts "Now we have #{students.count} students"
    name = gets.chomp
  end
  students
end

def print_header
  puts "The students of Villains Academy"
  puts "-------------"
end

def print_names(student_data)
  student_place = 0
  while student_place < student_data.length
    puts "#{student_data[student_place][:name]} (#{student_data[student_place][:cohort]} cohort)"
    student_place += 1
  end
end

def print_footer(names)
  puts "Overall, we have #{names.count} great students"
end

students = input_students
print_header
print_names(students)
print_footer(students)