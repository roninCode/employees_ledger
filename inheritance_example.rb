class CarAndBike
  def initialize(input_options)
    @speed = input_options[:speed]
    @direction = input_options[:north]
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


# Add car specific attributes to the Car class (fuel, make, model, etc.) and bicycle specific attributes to the Bicycle class (speed, type, weight, etc.). Use the super method to keep the initialize methods DRY.
################################################
class Car < CarAndBike
  def initialize(input_options)
    super
    @fuel = input_options[:fuel]
    @make = input_options[:make]
    @model = input_options[:model]
  end
  
  attr_reader :fuel, :make, :model
  attr_writer :fuel

  def honk_horn
    puts "Beeeeeeep!"
  end

end
#################################################
class Bike < CarAndBike
  def initialize(input_options)
    super
    @gears = input_options[:gears]
    @type = input_options[:type]
    @weight = input_options[:weight]
  end

  attr_reader :gears, :type, :weight
  attr_writer :gears
  
  def ring_bell
    puts "Ring ring!"
  end
end

biker = Bike.new({gears: 4, type: "light-weight", weight: 145})
# p biker.accelerate
driver = Car.new({fuel: 130, make: "Ford", model: "Expedition"})
p biker.gears
p driver
# driver.ring_bell
# driver.honk_horn
# biker.honk_horn