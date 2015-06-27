require_relative 'player'


class Game

  attr_reader :comp_pick

  def initialize
    # @comp_pick = ""
  end

  def comp_choice 
    # @comp_pick = 
    ['rock','paper','scissors'].sample
  end

  def play player_choice

    comp = comp_choice

    print "Player choice: " + "#{player_choice}\n" 
    print "Computer choice: " + comp

    comp = comp.to_sym
    
    if player_choice == 'paper'
      a = {paper: "tie", rock: "wins", scissors: "lose"}
      a[comp]
    elsif player_choice == 'rock'
      a = {paper: "lose", rock: "tie", scissors: "wins"}
      b = (comp_choice).to_sym
      a[comp]
    else player_choice == 'scissors'
      a = {paper: "win", rock: "lose", scissors: "tie"}
      b = (comp_choice).to_sym
      a[comp]
    end

  end

  def logic



  end






end
