

class FoodManager
  attr_accessor :foods
  def initialize
    @foods = {
      Momo: 3,
      Pizza: 4,
      Burger: 1
    }
  end
 
  def add_food
    puts "What food do you want to add?"
    title = gets.chomp
    if @foods[title.to_sym].nil?
      puts "What's the rating? (Type a number 0 to 4.)"
      rating = gets.chomp
      @foods[title.to_sym] = rating.to_i
      puts "#{title} has been added with a rating of #{rating}."
    else
      puts "That food already exists! Its rating is #{@foods[title.to_sym]}."
    end
  end

  def display_food
    @foods.each do |key, value|
  
      puts "#{key}: #{value}"
      
    end
  end

  def delete_food
    puts "What food do you want to delete?"
    title = gets.chomp
    if @foods[title.to_sym].nil?
      puts "Food not found!"
    else
      @foods.delete(title.to_sym)
      puts "#{title} has been removed."
    end
  end

end

    foodManager = FoodManager.new
    loop do
      puts "What would you like to do?"
      puts "-- Type 'add' to add food item "
      puts "-- Type 'display' to display food items "
      puts "-- Type 'delete' to delete food items"
      puts " -- Type 'exit' to quit" 

      choice = gets.chomp.downcase
      puts choice
      case choice
      when 'add'
        foodManager.add_food 

      when 'display'
         foodManager.display_food
      
      when 'delete'
        foodManager.delete_food

      when 'exit'
        puts "Good Bye! Thanks for visiting"
        break
      else
        puts "Sorry Its invalid input"
      end
    end
 


