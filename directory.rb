  @students = []

def print_student_list
    puts "Which cohort would you like see the list of? If all, type: All"
    which_cohort = STDIN.gets.chomp
     @students.each_with_index do |student, index|
    if which_cohort.downcase == "All".downcase
      puts "#{index + 1}.#{student[:name]}. Cohort: #{student[:cohort]}. Country of birth: #{student[:country]}. Hobbies: #{student[:hobbies]}. Height: #{student[:height]}. Weight:#{student[:weight]}".center(150) if @students.count > 0
      elsif which_cohort == student[:cohort]
    @students.map{|c| c[:cohort]}
   puts "#{index + 1}.#{student[:name]}. Cohort: #{student[:cohort]}. Country of birth: #{student[:country]}. Hobbies: #{student[:hobbies]}. Height: #{student[:height]}. Weight:#{student[:weight]}".center(150) if @students.count > 0
   end
   end
end

def print_menu
      # 1. print the menu and ask the user what to do
    puts "1. Input the students"
    puts "2. Show the students"
    puts "3. Save the list to students.csv"
    puts "9. Exit" # 9 because we'll be adding more items
end

def show_students
    puts "The students of Villains Academy"
    puts "-------------"
    print_student_list
    if @students.count > 0
        if @students.count > 1
            puts "Overall, we have #{@students.count} great students"
        else
            puts "Overall, we have #{@students.count} great student" 
        end
    end
end

def process(selection)
    case selection
    when "1"
        try_load_students
    when "2"
        show_students 
    when "3"
        save_students
      when "9"
        exit # this will cause the program to terminate
    else
        puts "I don't know what you meant, try again"
    end
  end
  
def interactive_menu
   loop do
    print_menu
    process(STDIN.gets.chomp)
    end
end

def save_students
    #open the file for writing
    file = File.open("students.csv", "w")
    @students.each do |student|
        student_data = [student[:name], student[:cohort]]
        csv_line = student_data.join(",")
        file.puts csv_line
    end
    file.close
end

def try_load_students
    filename = ARGV.first
    if filename.nil?
        file = File.open("students.csv", "r")
        file.readlines.each do |line|
        name, cohort, hobbies, country, height, weight = line.chomp.split(',')
        @students << {name: name, cohort: cohort, hobbies: hobbies, country: country, height: height, weight: weight}
        puts "Loaded #{@students.count} from #{filename}"
        end
        file.close
    elsif File.exists?(filename)
        try_load_students
        (filename)
        
    else
        puts "Sorry, #{filename} doesn't exist"
        exit
    end
end
#nothing happens until we call the methods
interactive_menu