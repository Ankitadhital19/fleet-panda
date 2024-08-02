class ToDo
  attr_accessor :tasks
  def initialize
    @tasks= {
         Wakeup: "8am" ,
         Lunch: "10am", 
         Work: "4pm",
         Sleep: "10pm"
    }
  end
   
    def add_task
      puts "What task you want to add?"
      title = gets.chomp
      if @tasks[title.to_sym].nil?
        puts "What is the time?"
        time = gets.chomp
        @tasks[time.to_sym] = time.to_i
        puts "#{title} has been added to the task at #{time}"
      else
        puts "The task already exists. It should be performed in  #{@task[time.to_sym]}]"
      end
    end

    def delete_task
      puts "What task you want to delete"
      title = gets.chomp
      if @tasks[title.to_sym].nil?
        puts "Task not found"
      else
        @task.delete(title.to_sym)
        puts "#{title} has been deleted"
      end 
    end

    def list_task
      @tasks.each do |key, value|
      puts "#{key}: #{value}"   
     end
    end

    def completed
      puts "Enter task title to mark as completed: "
      title = gets.chomp
      task = @tasks[title.to_sym]
      if task
        puts "#{title} has been marked as completed."
      else
        puts "Task not found!"
      end
    end

    def incompleted
      puts "Enter task title to mark as incompeted"
      title = gets.chomp
      task =@tasks[title.to_sym]
      if task
        puts "#{title} has been marked as incomplete"
      else
        puts "Task not found!"
      end
    end


end


 toDo = ToDo.new 
loop do 
  puts "What activity would you like to perform"
  puts "-- Type 'add' When you want to add a new task"
  puts "-- Type 'delete' When you want to delete a task"
  puts "-- Type 'task' When you want to list task"
  puts "-- Type 'mark_completed' When task is completed"
  puts "-- Type 'mark_incompleted'  when task is incompleted"
  puts "-- Type 'exit' to quit "

  choice = gets.chomp.downcase
  puts choice
  case choice
   when 'add'
    toDo.add_task

   when 'delete'
    toDo.delete_task

   when 'task'
    toDo.list_task

   when 'mark_completed'
    toDo.completed
   
   when 'mark_incompleted'
    toDo.incompleted

  when 'exit'
    puts "Good Bye! Thanks for visiting; Have a good day"
    break
  else 
    puts "invalid input"
  end

end
