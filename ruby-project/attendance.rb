class Attendance
  attr_accessor :name , :id , :attendance
  def initialize(details ={})
    @name = details[:name]
    @id = details[:id]
    @attendance = []
  end

  def mark_absent
    @attendance << 'absent'
  end

  def mark_present
    @attendance << 'present'
  end

  def list_attendence
    "Name : #{@name}, ID: #{@id}, Attendance = #{@attendance.join(',')} :"
  end
end

class AttendanceManagementSystem
  def initialize
    @student = []  
  end
def add_attendance(student)
   @student << student
end
def remove_attendance(id)
  students.reject! {|student| student.id == id}
end

def mark_present(id)
  student = @students.find {|student| student_id == id}
  student.mark_present if student
end

def mark_absent (id)
  student = @student.find {|student| student.id == id}
  student.mark_absent if student 
end

def list_attendence
  @student.each do |student|
    puts student.list_attendence
  end
end

   
end
attendanceSystem = AttendanceManagementSystem.new
loop do 
  puts "1.  Type 'add' to add attendance"
  puts "2. Type 'Remove' to remove attendance"
  puts "3. Type 'present' to mark present"
  puts "4.  Type 'absent' to mark absent "
  puts "5. Type 'List' to list people"
  puts "6. Type 'exit' to exit"
  choice = gets.chomp.downcase
  # puts choice
  case choice
  when 'add'
    puts "Enter name of student"
    name = gets.chomp
    puts "Enter Id of student"
    id = gets.chomp
    student = Attendance.new(name: name, id: id )
    attendanceSystem.add_attendance(student)
  when 'Remove'
    puts "Enter ID of the student here"
    id = gets.chomp
    attendanceSystem.remove_attendance(id)
    
  when 'present'
    puts "Enter ID of student to mark present"
    id = gets.chomp
    attendanceSystem.mark_present(id)

  when 'absent'
    puts "Enter ID of student to mark absent"
    id = gets.chomp
    attendanceSystem.mark_absent(id)
  
  when 'List'
    
    attendanceSystem.list_attendence
  
  when 'exit'
    puts "Thank you for visiting"
    break
  else
    puts "Error"
  end
end