class String
  define_method(:beats?) do |other|
    if self == "rock" && other == "scissors"
      true
    elsif self == "scissors" && other == "rock"
      false
    end
  end
end
