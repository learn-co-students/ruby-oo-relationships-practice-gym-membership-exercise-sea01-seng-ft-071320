class Membership
  attr_reader :cost, :lifter, :gym

  @@all= []

  def initialize(cost, lifter, gym)
    @cost = cost
    @lifter = lifter
    @gym = gym

    @@all << self
  end
  
  # Get a list of all memberships
  def self.all
    @@all
  end

end
