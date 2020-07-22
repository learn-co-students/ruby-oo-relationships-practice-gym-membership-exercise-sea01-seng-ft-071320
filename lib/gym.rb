class Gym
  attr_reader :name
  @@all = []

  def initialize(name)
    @name = name

    @@all << self
  end
  # Get a list of all gyms
  def self.all
    @@all
  end

  def memberships # Get a list of all memberships at a specific gym
    Membership.all.select  {|membership| membership.gym == self}
  end

  def lifters_by_gym  # Get a list of all the lifters that have a membership to a specific gym
    memberships.collect {|lifter| lifter.lifter}
  end

  def name_of_lifters_by_gym # Get a list of the names of all lifters that have a membership to that gym
    lifters_by_gym.collect {|lifter| lifter.name}
  end
  
  def combined_lift   # Get the combined lift total of every lifter has a membership to that gym
    lifters_by_gym.sum {|lifter| lifter.lift_total}
  end
end


