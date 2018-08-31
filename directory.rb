@students = []

def input_students
  puts "Please enter the student's name:"
  name = gets.chomp
  puts "Please enter the cohort month:"
  puts "(To finish, hit return twice)"
  
  while !name.empty?
    cohort = gets.chomp
    cohort = "Forever" if cohort.empty?
    @students << {name: name, cohort: cohort}
    if @students.count != 1
      puts "Now we have #{@students.count} students"
    else
      puts "Now we have #{@students.count} student"
    end
    name = gets.chomp
  end
end

def print_header
  puts "The Students of Villains Academy".center(50)
  puts "-------------".center(50)
end

def print_names
  
stu_array = {}

@students.each { |stu|
  cohort_group = stu[:cohort]
  
    if stu_array[cohort_group] == nil
      stu_array[cohort_group] = []
    end
    stu_array[cohort_group].push(stu[:name])
    }

stu_array.each { |cohort, name|
  puts "Cohort Month - #{cohort}:"
  puts name
  }

end

def print_footer
  if @students.count != 1
    puts "Overall, we have #{@students.count} great students".center(50)
  else
    puts "Overall, we have 1 great student".center(50)
  end
end

def print_menu
  puts "1. Input the students"
  puts "2. Show the students"
  puts "9. Exit"
end

def show_students
  if !@students.empty?
    print_header
    print_names
    print_footer
  else
    puts "You need to enter student data"
  end
end

def process(selection)
  case selection
    when "1"
      input_students
    when "2"
      show_students
    when "9"
      exit
    else
      puts "I don't know what you meant, try again"
  end
end

def interactive_menu
  loop do
    print_menu
    process(gets.chomp)
  end
end

interactive_menu
