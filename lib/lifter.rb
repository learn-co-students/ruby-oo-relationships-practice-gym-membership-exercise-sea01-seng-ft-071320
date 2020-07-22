class Lifter
  attr_reader :name, :lift_total
  @@all = []

  def initialize(name, lift_total)
    @name = name
    @lift_total = lift_total

    @@all << self
  end

  def self.all  # Get a list of all lifters
    @@all
  end
  
  def memberships # Get a list of all the memberships that a specific lifter has
    Membership.all.select  {|membership| membership.lifter == self}
  end
  
  def gyms # Get a list of all the gyms that a specific lifter has memberships to
  memberships.collect {|membership| membership.gym}
  end

  def self.average_lift # Get the average lift total of all lifters
    sum_lift_total = Lifter.all.sum {|lift| lift.lift_total}
    count_total = Lifter.all.count {|lift| lift.lift_total}
    sum_lift_total.to_f / count_total.to_f
  end

  def total_cost # Get the total cost of a specific lifter's gym memberships
    self.memberships.sum {|lifter| lifter.cost }
  end

  def sign_up(membership_cost, gym) # Given a gym and a membership cost, sign a specific lifter up for a new gym
    Membership.new(membership_cost, self, gym)
  end

end







