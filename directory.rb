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
    if students.count != 1
      puts "Now we have #{students.count} students"
    else
      puts "Now we have #{students.count} student"
    end
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
  puts "Cohort Month - #{cohort}:"
  puts name
  }

end

def print_footer(names)
  if names.count != 1
    puts "Overall, we have #{names.count} great students".center(50)
  else
    puts "Overall, we have 1 great student".center(50)
  end
end

def interactive_menu
  students = []
  loop do
    puts "1. Input the students"
    puts "2. Show the students"
    puts "9. Exit"
    selection = gets.chomp
    case selection
    when "1"
      students = input_students
    when "2"
      if !students.empty?
        print_header
        print_names(students)
        print_footer(students)
      else
        puts "You need to enter student data"
      end
    when "9"
      exit
    else
      puts "I don't know what you meant, try again"
    end
  end
end

interactive_menu
