##Group work together with Will, Essa, Anthony and Susanna
# Finish the implementation of the Car class so it has the functionality described below
require 'pry'
class Car
    attr_accessor :make, :model
    @@all = []

    def initialize(car_hash)
        @make = car_hash[:make]
        @model = car_hash[:model]
        @@all << self
    end

    def drive
        "VROOOOOOOOOOOOM!"
    end

    def self.all
        @@all
    end


end

# car = Car.new("volvo", "lightening")
# car2 = Car.new("toyota", "camry")
# puts car.make
# #=> "volvo"
# puts car.model
# #=> "ligthening"

# puts car.drive
# # => "VROOOOOOOOOOOOM!"

# Car.all
# #binding.pry
# #=> [car1, car2, car3]
# car

#BONUS:

car3= Car.new(make: "volvo", model: "lightening")

bike_hash = {make: "bike", model: "bicycle"}

bike = Car.new(bike_hash)
puts bike.model

puts car3.make
#=> "volvo"
puts car3.model
#=> "ligthening"
