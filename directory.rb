# Now they're in an array
students = [
  "Dr. Hannibal Lecter",
  "Darth Vader",
  "Nurse Ratched",
  "Michael Corleone",
  "Alex DeLarge",
  "The Wicked Witch of the West",
  "Terminator",
  "Freddy Krueger",
  "The Joker",
  "Joffrey Baratheon",
  "Norman Bates",
]
puts "The students of Villains Academy"
puts "-------------"
students.each { |student| puts student }
# adding another comment. No. of students
puts "Overall, we have #{students.count} great students"