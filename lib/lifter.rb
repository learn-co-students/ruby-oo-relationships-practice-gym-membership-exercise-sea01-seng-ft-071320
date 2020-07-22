class Lifter
  attr_reader :name, :lift_total

  @@all = []

  def initialize(name, lift_total)
    @name, @lift_total = name, lift_total
    
    self.save
  end

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end

  #Instance methods to assign data
  def sign_membership(cost, gym)
    Membership.new(cost, self, gym)
  end

  #Instance methods that fetch data
  def memberships
    Membership.all.select { |membership| membership.lifter == self }
  end

  def gyms
    memberships.map(&:gym)
  end

  def total_cost
    memberships.map(&:cost).sum
  end

  #Class methods that aggregate data
  def self.average_lift_total
    (all.map(&:lift_total).sum.to_f / all.length).round(2)
  end


end
