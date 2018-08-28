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
  student_data.each { |student|
  if student[:name].start_with?("A")
    puts "#{student[:name]} (#{student[:cohort]} cohort)"
  end
  }
end

def print_footer(names)
  puts "Overall, we have #{names.count} great students"
end

students = input_students
print_header
print_names(students)
print_footer(students)
