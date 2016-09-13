def input_students
    puts "Please enter the names of the students"
   puts "To finish, just hit return twice"
   #create an empty array
   students = []
   #get the first name
   loop do
   puts "What is the student\'s name?"
   name = gets.chomp
    if name.empty? 
           break 
       end
   #get their cohort
   puts "What cohort are they on?"
   cohort = gets.chomp
   #get the hobbies
   puts "what are their hobbies?"
   hobbies = gets.chomp
   #get country of birth
   puts "What is their country of birth?"
   country = gets.chomp
   #get their height
   puts "What is their height?"
   height = gets.chomp
   #get their weight
   puts "What is their weight?"
   weight = gets.chomp
   #while the name is not empty
  
       #add the student hash to the array
       students << {name: name, cohort: cohort, hobbies: hobbies, country: country, height: height, weight: weight}
       puts "Now we have #{students.count} students"
       #get another name from the user
     
      
       end
       #return the arrary of students

       students
end

def print_header
   puts "The students of Villains Academy"
   puts "-------------"
end

def print(students)
   students.each_with_index do |student, index|
     puts "#{index + 1} #{student[:name]} (#{student[:cohort]} cohort): Country of birth: #{student[:country]}. Hobbies: #{student[:hobbies]}. Height: #{student[:height]}. Weight:#{student[:weight]}".center(20)
   end
end


def print_footer(students)
   puts "Overall, we have #{students.count} great students"
end

#nothing happens until we call the methods

students = input_students    
print_header
print(students)
print_footer(students)