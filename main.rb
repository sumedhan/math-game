require './player.rb'
require './question.rb'

# p1 = Player.new('P1')


q = Question.new


puts q.statement
ans = gets.chomp.to_i
puts q.check_answer(ans)

