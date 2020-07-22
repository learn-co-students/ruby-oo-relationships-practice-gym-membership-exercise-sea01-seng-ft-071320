    # You don't need to require any of the files in lib or pry.
# We've done it for you here.
require_relative '../config/environment.rb'

# test code goes here
erica = Lifter.new("Erica", 225)
naty = Lifter.new("Naty", 150)
nir = Lifter.new("Nir", 100)
bob = Lifter.new("Bob", 55)

lifetime = Gym.new("Life Time")
gold = Gym.new("Gold")
crunch = Gym.new("Crunch")

membership1 = Membership.new(150, erica, lifetime)
membership2 = Membership.new(150, naty, lifetime)
membership3 = Membership.new(89, naty, gold)
membership4 = Membership.new(95, nir, gold)
membership5 = Membership.new(50, nir, crunch)
membership6 = Membership.new(50, bob, crunch)
membership7 = Membership.new(50, erica, crunch)



binding.pry

puts "Gains!"
