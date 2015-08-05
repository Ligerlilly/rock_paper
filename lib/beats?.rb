require 'pry'

class String
  define_method(:beats?) do |other|
    self.downcase!
    other.downcase!
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

def game(player_one, player_two)
  @game_boolean = player_one.beats?(player_two)
  if @game_boolean == true
    @winner = 'Player one is the winner!'
  elsif @game_boolean == false
    @winner = 'Player two is the winner!'
  else
    @winner = "<a href='/'>Try again</a>"
  end
end

def robot_game(user_input)
  robot = rand(3)+1
  if robot == 1
    robot = 'rock'
  elsif robot == 2
    robot = 'scissors'
  elsif robot == 3
    robot = 'paper'
  end
  @game_boolean = user_input.beats?(robot)
  if @game_boolean == true
    @winner = 'Player one is the winner!'
    @user_input = user_input
    @robot_input = robot
  elsif @game_boolean == false
    @winner = 'Robot is the winner!'
    @user_input = user_input
    @robot_input = robot
  else
    @winner = "<a href='/robot'>Try again</a>"
  end
end
