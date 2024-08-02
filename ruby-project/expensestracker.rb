class Expenses
 attr_accessor :amount, :description
 def initialize(amount,description)
  @amount = amount
  @description = description
 end
 def to_s
  "#{description}: $#{'%.3f' % amount}"
end
end

class ExpenseTracker
  def initialize 
    @expenses = []
  end
  def add_expense(amount, description)
    @expenses << Expenses.new(amount, description)
  end
  def list_expenses
     puts "Expenses: "
     @expenses.each {|expense| puts expense}
   end
   def total_expenses
     total =  @expenses.sum(&:amount)
     puts "Your total expense is $#{'%.3f' % total}"
   end

end

def display_menu 
  puts "1. Add Expense"
  puts "2. List Expenses"
  puts "3. Total Expenses"
  puts "4. Exit"
end
tracker = ExpenseTracker.new
 
loop do
  display_menu 
  puts "Please choose an option"
  choice = gets.chomp.to_i

  case choice
  when 1 
    puts "Enter amount $: $"
    amount = gets.chomp.to_f
    puts "Enter description : "
    description = gets.chomp
    tracker.add_expense(amount,description)

  when 2
    tracker.list_expenses

  when 3
    tracker.total_expenses
   
  when 4
    puts "Thank you"
    break
  else
    puts "You palced wrong arguments"
  end
end