class Player
  attr_accessor :id, :score

  def initialize(id)
    @id = id
    @score = 3
  end

  def lose_point
    @score - 1
  end
end

# Test code
# p p1 = Player.new(1)
# p p2 = Player.new(2)

# puts p2.lose_point