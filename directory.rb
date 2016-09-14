def input_students
       #create an empty array
   students = []
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
       students << {name: name, cohort: cohort, hobbies: hobbies, country: country, height: height, weight: weight}
       if students.count > 0
        puts "Now we have #{students.count} students"
    end
       #get another name from the user
     
      
       end
       #return the arrary of students

       students
end

def print_header 
    if input_students.count > 0
   puts "The students of Villains Academy"
   puts "-------------"
   end
end

def print(students)
   students.each_with_index do |student, index|
     puts "#{index + 1}.#{student[:name]}. Cohort: #{student[:cohort]}. Country of birth: #{student[:country]}. Hobbies: #{student[:hobbies]}. Height: #{student[:height]}. Weight:#{student[:weight]}".center(150) if students.count > 0
   end
end


def print_footer(students)
    if students.count > 0
    if students.count > 1
   puts "Overall, we have #{students.count} great students"
   else
   puts "Overall, we have #{students.count} great student" 
   end
   end
end

#nothing happens until we call the methods

students = input_students    
print_header
print(students)
print_footer(students)