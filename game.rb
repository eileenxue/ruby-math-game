class Game

attr_accessor :p1, :p2, :turn

  # Start the game with two players
  def initialize(p1, p2)
    @p1 = p1
    @p2 = p2
    @turn = 0
  end

  # Determine whose turn is it
  def next_turn
    @turn += 1

    if (@turn % 2 == 0)
      puts "Player 2's Turn"
    else
      puts "Player 1's Turn"
    end
    
  end

  # Shows the score
  def current_score
    puts "P1: #{p1.score}/3 vs P2: #{p2.score}/3"
  end

  # Show ending message
  def ending_message
    if p1.score == 0
      puts "Player 2 is the winner!"
    elsif p2.score == 0
      puts "Player 1 is the winner!"
    end
  
    puts "----- Game Over. Thanks for playing. -----"
  end

end