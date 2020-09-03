require "./employee.rb"
require "./manager.rb"
require "./intern.rb"

employee1 = Actualize::Employee.new({last_name: "Wengrow", salary: 150000, active: true, first_name: "Jay"})
employee2 = Actualize::Employee.new(first_name: "Dani", last_name: "Zaghian", salary: 40000, active: true)
employee1.print_info
employee2.print_info

manager = Actualize::Manager.new(first_name: "James", last_name: "Odegaard", salary: 70000, active: true, employees: [employee1, employee2])
manager.print_info
manager.send_email_report

intern = Actualize::Intern.new(first_name: "Jeneen", last_name: "LeMar", salary: 10000, active: true)
intern.print_info
intern.send_email_report