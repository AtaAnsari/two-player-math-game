class Player
  attr_accessor :lives, :turn, :name
  def initialize(name)
    self.lives = 3
    self.turn = true
    self.name = name
  end
end