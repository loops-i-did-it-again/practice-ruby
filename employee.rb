# array
# employee1 = ["Jay", "Wengrow", 150000, true]
# employee2 = ["Dani", "Zaghian", 40000, true]
# puts employee1[0] + " " + employee1[1] + " makes " + employee1[2].to_s + " a year."
# puts "#{employee2[0]} #{employee2[1]} makes #{employee2[2]} a year."

# hash
# string hashrocket syntax
# employee1 = {"first_name" => "Jay", "last_name" => "Wengrow", "salary" => 150000, "active" => true}
# # symbol syntax
# employee2 = {:last_name => "Zaghian", :salary => 40000, :active => true, :first_name => "Dani"}
# # js syntax (keys are symbols)
# employee3 = {first_name: "Carl", last_name: "Hauck", salary: 0, active: true}

# puts "#{employee1['first_name']} #{employee1['last_name']} makes #{employee1['salary']} a year."
# p "#{employee2[:first_name]} #{employee2[:last_name]} makes #{employee2[:salary]} a year."

# class
class Employee
  attr_reader :first_name, :last_name, :salary, :active
  attr_writer :first_name, :last_name, :active
  
  def initialize(input_options)
    # instance variables
    @first_name = input_options[:first_name]
    @last_name = input_options[:last_name]
    @salary = input_options[:salary]
    @active = input_options[:active]
  end

  # instance method
  def print_info
    puts "#{first_name} #{last_name} makes #{salary} a year."
  end

  def give_annual_raise
    @salary = 1.05 * @salary
  end
end

employee1 = Employee.new({last_name: "Wengrow", salary: 150000, active: true, first_name: "Jay"})
employee2 = Employee.new(first_name: "Dani", last_name: "Zaghian", salary: 40000, active: true)
employee1.print_info
employee2.print_info
puts employee2.give_annual_raise
puts employee2.first_name
employee1.active = false
puts employee1.active


