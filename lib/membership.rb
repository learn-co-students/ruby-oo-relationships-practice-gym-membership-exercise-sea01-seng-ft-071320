class Membership
  attr_reader :cost, :lifter, :gym

  @@all = []

  def initialize(cost, lifter, gym)
    @cost, @lifter, @gym = cost, lifter, gym

    self.save
  end

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end
end
