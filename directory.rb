  @students = []
def input_students
       #get the first name and cohort
   loop do
   puts "Enter the student\'s name, press 'enter' and then type in the cohort"
   puts "To finish, just hit return twice"
   name = gets.strip
    if name.empty? 
           break 
    end
  cohort = gets.strip
  if cohort.empty?
      cohort = "Cohort not enter"
    end
    puts "what are their hobbies?"
   hobbies = gets.strip
   if hobbies.empty?
       hobbies = "Not entered"
   end
   #get country of birth
   puts "What is their country of birth?"
   country = gets.strip
    if country.empty?
       country = "Not entered"
   end
   #get their height
   puts "What is their height?"
   height = gets.strip
   if height.empty?
       height = "Not entered"
   end
   #get their weight
   puts "What is their weight?"
   weight = gets.strip
   if weight.empty?
       weight = "Not entered"
   end
   #while the name is not empty
  
       #add the student hash to the array
       @students << {name: name, cohort: cohort, hobbies: hobbies, country: country, height: height, weight: weight}
       if @students.count > 0
        puts "Now we have #{@students.count} students"
        end
   end
end

def print_header 
    puts "The students of Villains Academy"
   puts "-------------"
end


def print_student_list
    puts "Which cohort would you like see the list of? If all, type: All"
    which_cohort = gets.chomp
     @students.each_with_index do |student, index|
    if which_cohort.downcase == "All".downcase
      puts "#{index + 1}.#{student[:name]}. Cohort: #{student[:cohort]}. Country of birth: #{student[:country]}. Hobbies: #{student[:hobbies]}. Height: #{student[:height]}. Weight:#{student[:weight]}".center(150) if @students.count > 0
      elsif which_cohort == student[:cohort]
    @students.map{|c| c[:cohort]}
   puts "#{index + 1}.#{student[:name]}. Cohort: #{student[:cohort]}. Country of birth: #{student[:country]}. Hobbies: #{student[:hobbies]}. Height: #{student[:height]}. Weight:#{student[:weight]}".center(150) if @students.count > 0
   end
   end
end


def print_footer
    if @students.count > 0
        if @students.count > 1
            puts "Overall, we have #{@students.count} great students"
        else
            puts "Overall, we have #{@students.count} great student" 
   end
   end
end

def print_menu
      # 1. print the menu and ask the user what to do
    puts "1. Input the students"
    puts "2. Show the students"
    puts "9. Exit" # 9 because we'll be adding more items
end

def show_students
    print_header
    print_student_list
    print_footer
end

def process(selection)
    case selection
    when "1"
        input_students
    when "2"
        show_students 
    when "9"
        exit # this will cause the program to terminate
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
    
#nothing happens until we call the methods
interactive_menu
