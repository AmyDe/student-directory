def input_students
  puts "Please enter the student's name:"
  puts "To finish, hit return twice"
  students = []
  name = gets.chomp
  while !name.empty?
    students << {name: name, cohort: :November,}
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
  student_data.each { |stud| 
    print "#{stud[:name]}" 
    print"(#{stud[:cohort]} cohort)".rjust(50)
    puts " "
  }
end

def print_footer(names)
  puts "Overall, we have #{names.count} great students".center(50)
end

students = input_students
print_header
print_names(students)
print_footer(students)