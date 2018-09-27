
# first we print the list od students
def input_students
  puts 'Please enter the names of the students: '
  puts 'To finish inputting, hit return twice.' 
  #Get user input
  name = gets.chomp
  #While the name input isnt empty, repeat the code loop
  while !name.empty? do
    #Add the student to the hash
    @students << {name: name, cohort: :november}
    puts "Now we have #{@students.count} students"
    #Get another name from the user
    name = gets.chomp
  end
  #Return the array of students
  @students
end

def print_header
  puts "The student of Villains Academy"
  puts "------------"
end
def print_student_list(students)
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
@students = []
#Print the menu options
def print_menu
  puts '1. Input new students'
  puts '2. Show current students'
  puts '3. Save students to file'
  puts '9. Exit the program'
end





def save_students()
  #Open the file for writing
  file = File.open('students.csv', 'w')
  #Iterate over the students array to write into the file
  @students.each do |z|
    student_data = [z[:name], z[:cohort]]
    csv_line = student_data.join(',')
    file.puts csv_line
  end
  file.close
end

def process(selection)
  case selection
  when '1'
    input_students()
  when '2'
    show_students()
  when '3'
    save_students()
  when '9'
    exit
  else
    puts 'Invalid selection. Try again.'
  end
end
#Run the interactive menu and get user input
def interactive_menu
  
  loop do
    print_menu() 
    
    process(gets.chomp)
  end
end
#Print the list students
def show_students
  print_header()
  print_student_list(@students)
  print_footer(@students)
end

interactive_menu()
