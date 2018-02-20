class Ship
  attr_accessor :name, :type, :booty

  @@all = []

  def initialize(name, type, booty)
    @name = name
    @weight = type
    @height = booty
    @@all << self
  end

  def self.all
    @@all
  end

  def self.clear
    @@all = []
  end
end
