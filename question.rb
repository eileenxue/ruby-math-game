class Question 
  
  attr_accessor :mark

  def initialize
    @num1 = rand(1..20)
    @num2 = rand(1..20)
    @answer = @num1 + @num2
    @response = nil
    @mark = nil
  end

  def ask
    puts "What is #{@num1} plus #{@num2}?"
    @response = gets.chomp.to_i

    if @response == @answer
      puts "Great job! You're safe."
      @mark = true
    else
      puts "Uh oh, that's incorrect."
      @mark = false
    end
  end

  # Get the answer and see if it's right
  # def correct?
  #   if @response == @answer
  #     puts "Great job! You're safe."
  #     @mark = true
  #     puts @mark
  #   else
  #     puts "Uh oh, that's incorrect."
  #     @mark = false
  #     puts @mark
  #   end
  # end

end

# Test code
question = Question.new

# question.ask
# question.correct?
