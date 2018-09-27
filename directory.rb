
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
  i=0
  while i < students.length
  	student = students[i]
    puts "#{i} #{student[:name]} (#{student[:cohort]} cohort)"
    i += 1
  end
end
def print_footer(student)
  puts "Overall, we have #{student.count} great students"
end
def interactive_menu
  students = []
  loop do
    puts '1. Input new students'
    puts '2. Show current students'
    puts '9. Exit the program'
    
    selection = gets.chomp
    
    case selection
      when '1'
        students = input_students()
      when '2'
        print_header()
        print(students)
        print_footer(students)
      when '9'
        exit
      else
        puts 'Invalid selection. Try again.'
    end
  end
end




#nothing happens until we call the methods
#print_header
#print(students)
#print_footer(students)
interactive_menu()
