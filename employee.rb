# array
# employee1 = ["Jay", "Wengrow", 150000, true]
# employee2 = ["Dani", "Zaghian", 40000, true]
# puts employee1[0] + " " + employee1[1] + " makes " + employee1[2].to_s + " a year."
# puts "#{employee2[0]} #{employee2[1]} makes #{employee2[2]} a year."

# hash
# string hashrocket syntax
employee1 = {"first_name" => "Jay", "last_name" => "Wengrow", "salary" => 150000, "active" => true}
# symbol syntax
employee2 = {:last_name => "Zaghian", :salary => 40000, :active => true, :first_name => "Dani"}
# js syntax (keys are symbols)
employee3 = {first_name: "Carl", last_name: "Hauck", salary: 0, active: true}

puts "#{employee1['first_name']} #{employee1['last_name']} makes #{employee1['salary']} a year."
p "#{employee2[:first_name]} #{employee2[:last_name]} makes #{employee2[:salary]} a year."

# class
