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

class Manager < Employee
  def send_email_report
    puts "Sending email..."
    # super cool email sending library...
    puts "Email sent!"
  end
end
# employee1 = Employee.new({last_name: "Wengrow", salary: 150000, active: true, first_name: "Jay"})
# employee2 = Employee.new(first_name: "Dani", last_name: "Zaghian", salary: 40000, active: true)
# employee1.send_email_report

manager = Manager.new(first_name: "James", last_name: "Odegaard", salary: 70000, active: true)
manager.print_info
manager.send_email_report