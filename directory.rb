def input_students
    puts "Please enter the names of the students"
    puts "To finish, just hit return twice"
    #create an empty array
    students = []
    #get the first name
    name = gets.chomp
    #get the hobbies
    puts "what are your hobbies?"
    hobbies = gets.chomp
    #get country of birth
    puts "What is your country of birth?"
    country_of_birth = gets.chomp
    #get their height
    puts "What is your height?"
    height = gets.chomp
    #get their weight
    puts "What is your weight?"
    weight = gets.chomp
    #while the name is not empty
        while !name.empty? do
        #add the student hash to the array
        students << {name: name, cohort: :november, hobbies: hobbies, country_of_birth: country_of_birth, height: height, weight: weight}
        puts "Now we have #{students.count} students"
        #get another name from the user
        name = gets.chomp
        end
        #return the arrary of students
        students
end

def print_header
    puts "The students of Villains Academy"
    puts "-------------"
end

def print(students)
    students.each_with_index{|student, index| puts "#{index + 1}.#{student[:name]} (#{student[:cohort]} cohort, hobbies: #{student[:hobbies]}, born in #{student[:country_of_birth]}, height: #{student[:height]}, weight: #{student[:weight]})"}
  
end


def print_footer(students)
    puts "Overall, we have #{students.count} great students"
end

#nothing happens until we call the methods

students = input_students    
print_header
print(students)
print_footer(students)