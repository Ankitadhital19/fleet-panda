class Person
  attr_accessor  :name, :id
  def initialize (name, id)
    @name = name
    @id = id
  end
end

class Attendance
  attr_accessor :person , :date , :status
  def initialize (person, date, status)
    @person = person
    @date = date
    @status = status
  end
end

class AttendanceManagementSystem
  def initialize
    @people = []
    @attendances = []
  end

  # def add_person(name, id)
  #   person = Person.new(name, id)
  #   @people << person
  #   puts "Added #{name} with ID #{id}."
  # end
  # 
  def add_person(person)
    @people << person
  end

  def remove_person(id)
    @people.reject! { |p| p.id == id }
    puts "Removed person with ID #{id}."
  end

  def list_people
    @people.each {|person| puts "ID : #{person.id} , Name : #{person.name}"}
  end

  def mark_attendance
    person = @people.find { |p| p.id == id }
    if person
      attendance = Attendance.new(person, date, status)
      @attendances << attendance
      puts "Marked #{status} for #{person.name} on #{date}."
    else
      puts "Person with ID #{id} not found."
    end
  end
  def generate_report(date)
    puts "Attendance report for #{date}:"
    @attendances.select { |a| a.date == date }.each do |attendance|
      puts "#{attendance.person.name}: #{attendance.status}"
    end
  end
end


  ams = AttendanceManagementSystem.new

  loop do
    puts "\nAttendance Management System"
    puts "1. Add Student"
    puts "2. Remove person"
    puts "3. List people "
    puts "4. Mark Attendance "
    puts "5. Generate Report"
    puts "5. Exit"
    print "Choose an option: "

    option = gets.chomp.to_i
    case option
    when 1
      puts "Enter student name"
      name = gets.chomp
      puts "Enter student id"
      id = gets.chomp
      ams.add_person (Person.new(name, id))
        puts "Student added successfully with name #{name} and id #{id}."

    when 2
      puts "What detail do you want to remove? "
      id = gets.chomp
      if @people[title.to_sym].nil?
        puts "Data not found"
      else
        @people.reject(title.to_sym)
      end
    when 3
      
    when 5
      puts "Good Bye! Thank you for visiting"
      break
    else
      puts "Invalid Input"
      
    end
  end
  # title = gets.chomp
  #     if @tasks[title.to_sym].nil?
  #       puts "Task not found"
  #     else
  #       @tasks.delete(title.to_sym)
  #       puts "#{title} has been deleted"
  #     end 
