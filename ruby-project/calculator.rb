class Calculator
  def initilize
    @num1 = num1
    @num2 = num2
  end
  def add(num1, num2)
    num1 + num2
  end
  def subtract(num1, num2)
    num1 - num2
  end
  def multiply(num1, num2)
    num1 * num2
  end
  def divide(num1, num2)
    num1 / num2
  end
end

Calculator = Calculator.new 

loop do 
  puts "Calculator :"
  puts "1. Add "
  puts "2. Subtract"
  puts "3. Multiply"
  puts "4. Divide"
  puts "5. Exit"

  puts "Enter your choice : "
  choice = gets.chomp.to_i

  case choice
  when 1
    puts "Enter your fist input"
    num1 = gets.chomp.to_i
    puts "Enter your second input"
    num2 = gets.chomp.to_i
    puts "Output #{Calculator.add(num1,num2)}"
  end
  case choice
  when 2
    puts "Enter your fist input"
    num1 = gets.chomp.to_i
    puts "Enter your second input"
    num2 = gets.chomp.to_i
    puts "Output #{Calculator.subtract(num1,num2)}"
  
   when 3
    puts "Enter your fist input"
    num1 = gets.chomp.to_i
    puts "Enter your second input"
    num2 = gets.chomp.to_i
    puts "Output #{Calculator.multiply(num1,num2)}"
    
   when 4
  
    puts "Enter your fist input"
    num1 = gets.chomp.to_i
    puts "Enter your second input"
    num2 = gets.chomp.to_i
    puts "Output #{Calculator.divide(num1,num2)}"
   
   when 5
    break
   end
   

  end