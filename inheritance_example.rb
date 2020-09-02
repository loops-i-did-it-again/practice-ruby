class Vehicle
  def initialize(input_options)
    @speed = 0
    @direction = 'north'
  end

  def brake
    @speed = 0
  end

  def accelerate
    @speed += 10
  end

  def turn(new_direction)
    @direction = new_direction
  end
end

class Car < Vehicle
  attr_accessor :make, :model
  def initialize(input_options)
    super
    @make = input_options[:make]
    @model = input_options[:model]
    @year = input_options[:year]
  end
  def honk_horn
    puts "Beeeeeeep!"
  end
end

class Bike < Vehicle
  attr_accessor :type, :weight
  def initialize(input_options)
    super
    @type = input_options[:type]
    @weight = input_options[:weight]
  end
  def ring_bell
    puts "Ring ring!"
  end
end

bike = Bike.new(type: "Mountain", weight: 25)
car = Car.new(make: "Honda", model: "Civic", year: "2015")

bike.ring_bell
puts bike.type
car.honk_horn
puts car.make