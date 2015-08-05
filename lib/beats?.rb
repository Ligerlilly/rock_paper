class String
  define_method(:beats?) do |other|
    if self == "rock" && other == "scissors"
      true
    end
  end
end
