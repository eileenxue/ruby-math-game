# Requires all the other files
require "./player.rb"
require "./question.rb"
require "./game.rb"

# Start the game
def new_game

  p1 = Player.new(1)
  p2 = Player.new(2)
  game = Game.new(p1, p2)

  puts "----- WELCOME TO THE EPIC ADDING GAME -----"

  while p1.score > 0 && p2.score > 0

    # Set the turn and questions
    game.next_turn
    question = Question.new
    question.ask

    # Deduct the points for the correct player
    if question.mark == false && (game.turn % 2 == 0)
      p2.score -= 1
    elsif question.mark == false && (game.turn % 2 == 1)
      p1.score -= 1
    end

    puts game.current_score 
    
  end

  game.ending_message

end

new_game