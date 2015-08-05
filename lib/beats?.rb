require 'pry'

class String
  define_method(:beats?) do |other|
    self.downcase!
    other.downcase!
    # puts other
    if self == "rock" && other == "scissors"
      true
    elsif self == "scissors" && other == "rock"
      false
    elsif self == "rock" && other == "paper"
      false
    elsif self == 'paper' && other == 'rock'
      true
    elsif self == 'paper' && other == 'scissors'
      false
    elsif self == 'scissors' && other == 'paper'
      true
    elsif self == other
      'try_again'
    end
  end
end
