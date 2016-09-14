def input_students
       #create an empty array
   students = []
   #get the first name and cohort
   loop do
   puts "Enter the student\'s name and cohort following this format: Name, Cohort"
   puts "To finish, just hit return twice"
   nc = gets.strip
    if nc.empty? 
           break 
    end
   array = nc.split
   if array[1] == nil
       array.push(", (Name or Cohort not entered)")
    else array.push("'s cohort")
    end
     name_and_cohort = array.join('')
     
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
       students << {name: name_and_cohort, hobbies: hobbies, country: country, height: height, weight: weight}
       if students.counts > 0
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
     puts "#{index + 1} #{student[:name]}: Country of birth: #{student[:country]}. Hobbies: #{student[:hobbies]}. Height: #{student[:height]}. Weight:#{student[:weight]}".center(150) if students.count > 0
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