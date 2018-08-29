def input_students
  puts "Please enter the student's name:"
  students = []
  name = gets.chomp
  puts "Please enter the students height, as a number only, in cm"
  puts "To finish, hit return twice"
  while !name.empty?
    height = gets.chomp
    students << {name: name, cohort: :November, height: height,}
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
  student_data.each { |stud| 
    puts "#{stud[:name]} (#{stud[:cohort]} cohort) #{stud[:height]}cm tall"
  }
end

def print_footer(names)
  puts "Overall, we have #{names.count} great students"
end

students = input_students
print_header
print_names(students)
print_footer(students)