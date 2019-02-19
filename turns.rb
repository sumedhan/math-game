require './question.rb'

class Turn
  
  def initialize(currentPlayer)
    @question = Question.new
    @player = currentPlayer
  end

  def run_turn
    puts @player.name
    puts @question.statement
    answer = gets.chomp.to_i
    @question.check_answer(answer)
  end
end

