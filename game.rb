require './player.rb'
require './turns.rb'

class Game

  def initialize
    @player1 = Player.new('Player1')
    @player2 = Player.new('Player2') 
    @current_player = @player1
    @turns = 0
  end

  def run_game
    while @player1.lives > 0 && @player2.lives > 0 do
      @turns += 1
      turn = Turn.new(@current_player)
      if(turn.run_turn)
        puts "Correct Answer!"
      else
        puts "No! Please learn basic math"
        @current_player.lose_life
      end
      puts "------------------------------------------------------"
      puts "Current score: Player 1: #{@player1.lives}/3 lives left and Player 2: #{@player2.lives}/3 lives left."
      puts "------------------------------------------------------"
      @current_player = @current_player == @player1 ? @player2 : @player1
      @winner = @player1.lives > @player2.lives ? @player1 : @player2
    end
    puts "The winner of the contest is #{@winner.name} with #{@winner.lives}/3 lives remaining."

  end
end


g = Game.new
g.run_game
  
