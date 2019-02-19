# class that creates a basic math question using numbers 1 to 20

class Question 

  def initialize
    @number1 = rand(1..20);
    @number2 = rand(1..20);
    @operator = ['+','-','*','/'].sample
    @answer = eval(@number1.to_s + @operator + @number2.to_s)
  end

  def statement
    operator_text = 
    case @operator
    when '+'
      'plus'
    when '-'
      'minus'
    when '*'
      'multiplied by'
    when '/'
      'divided by'
    end
    "What is #{@number1} #{operator_text} #{@number2}?"
  end

  def check_answer(answer)
    @answer == answer ? true : false
  end

  

end
