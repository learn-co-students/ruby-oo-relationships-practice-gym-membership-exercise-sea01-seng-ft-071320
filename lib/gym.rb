class Gym
  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name

    self.save
  end

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end

  #Instance methods that fetch data
  def memberships
    Membership.all.select { |membership| membership.gym == self }
  end

  def lifters
    memberships.map(&:lifter)
  end

  def lifters_names
    lifters.map(&:name)
  end

  def lifters_lift_total
    lifters.map(&:lift_total).sum
  end
end
