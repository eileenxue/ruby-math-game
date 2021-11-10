require "./question.rb"
require "./player.rb"

class Game

attr_accessor :p1, :p2, :turn

  # Start the game with two players
  def initialize(p1, p2)
    @p1 = p1
    @p2 = p2
    @turn = 1
    # @current_player = nil
  end

  # Determine whose turn is it
  def next_turn
    # puts turn
    # if @turn % 2
    #   @current_player == @p2
    # else
    #   @current_player == @p1
    # end
    @turn += 1
    # puts "new #{turn}"
  end

  # Update the score base on answer
  # def update_score
  #   if question.mark == false && !(turn % 2)
  #     @p1.score -= 1
  #   elsif question.mark == false && turn % 2
  #     @p2.score -= 1
  #   end
  # end

  # def update_score
  #   p1.score -= 1
  # end

  # Shows the score
  def current_score
    puts "P1: #{p1.score}/3 vs P2: #{p2.score}/3"
  end

end

p1 = Player.new(1)
p2 = Player.new(2)
game = Game.new(p1, p2)

# puts p1.score
# game.update_score
# puts p1.score
# puts game.current_score
# # puts game.current_player
# game.next_turn
# # puts game.current_player
# game.next_turn