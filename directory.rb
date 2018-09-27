student_count = 11
students = []
# first we print the list od students
def input_students
  puts 'Please enter the names of the students: '
  puts 'To finish inputting, hit return twice.'
  #Create empty array
  students = []
  #Get user input
  name = gets.chomp
  #While the name input isnt empty, repeat the code loop
  while !name.empty? do
    #Add the student to the hash
    students << {name: name, cohort: :november}
    puts "Now we have #{students.count} students"
    #Get another name from the user
    name = gets.chomp
  end
  #Return the array of students
  students
end

def print_header
puts "The student of Villains Academy"
puts "------------"
end
def print(students)
   students.each_with_index do |student,i|
    puts "#{i} #{student[:name]} (#{student[:cohort]} cohort)" if student[:name].length < 12
  end
end
def print_footer(student)
  puts "Overall, we have #{student.count} great students"
end

students = input_students


#nothing happens until we call the methods
print_header
print(students)
print_footer(students)