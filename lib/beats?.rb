class String
  define_method(:beats?) do |other|
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
    end
  end
end
