# Requires all the other files
require "./player.rb"
require "./question.rb"
require "./game.rb"

# Start the game
def new_game

  p1 = Player.new(1)
  p2 = Player.new(2)
  game = Game.new(p1, p2)

  puts "A new game has started"

  while p1.score > 0 && p2.score > 0
    
    question = Question.new
    question.ask
    puts question.mark

    # Works!!
    # if question.mark == false
    #   p1.score -= 1
    #   puts p1.score
    # end

    # Figure out how to get the correct person
    if question.mark == false && (game.turn % 2 == 0)
      p2.score -= 1
    elsif question.mark == false && (game.turn % 2 == 1)
      p1.score -= 1
    end

    # game.update_score
    # if question.lose == true 
    # def update_score
    #   if question.lose == true && game.current_player == p1
    #     p1.score - 1
    #   elsif question.lose == true && game.current_player == p2
    #     p2.score - 1
    #   end
    # end
    # game.update_score
    # if question.mark == true && current_player == p1
    #   puts "this is p1"
    # end

    # p question
    puts "p1 score: #{p1.score}", "p2 score: #{p2.score}", "Current turn: #{game.turn}"
    puts game.current_score 
    game.next_turn
  end

end

new_game

# Test code
# puts p1.score

# game.current_score
# game.turn