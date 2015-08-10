require 'sinatra'

class Game

  def initialize
    @defeat = {rock: [:scissors,:lizard], paper: [:rock, :spock], scissors: [:paper, :lizard], lizard: [:spock, :paper], spock: [:scissors, :rock]}
    @throws = @defeat.keys
    @choice
    @computer_throw
    @check = []
  end

  def play
    puts "Enter your choice below:"
    @choice = gets.chomp
    check_name
  end

  def check_name
    if !@throws.include?(@choice.to_sym)
      return "you need to enter rock/paper/scissors! Try again!"
    else
      puts "You played #{@choice}!"
      computer_throw
      puts "The Computer played #{@computer_throw}!!"
      check_result
    end
  end

  def check_result
    if @choice.to_sym == @computer_throw
      "You tied with the computer. Try again!"
    elsif (@defeat[@choice.to_sym]).include?(@computer_throw)
      "Nicely done; #{@choice} beats #{@computer_throw}!"
    else
      "Ouch; #{@computer_throw} beats #{@choice}. Better luck next time!"
    end
  end


  def computer_throw
    @computer_throw = @throws.sample
  end


end