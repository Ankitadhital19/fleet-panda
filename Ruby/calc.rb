# Calculator using function

def add_function
    puts "Enter the numbers you would like to add"
    n1= gets.chomp.to_i
    n2= gets.chomp.to_i
    answer = n1 + n2 
    puts "The sum is ... #{answer}"
end

def sub_function 
    puts "Enter the numbers you would like to subtract"
    n1= gets.chomp.to_i
    n2= gets.chomp.to_i
    answer =n1 - n2 
    puts "The value is ... #{answer}"
end

def mul_function
    puts "Enter the numbers you would like to multiply"
    n1= gets.chomp.to_i
    n2= gets.chomp.to_i
    answer = n1 * n2 
    puts "The product is ... #{answer}"
end

puts "Would you like to [add],[subtract], or [multiply]?"
response = gets.chomp

if response == "add" then
    add_function
end 
if response == "subtract" then
    sub_function
end 
if response == "multiply" then
    mul_function
end 

