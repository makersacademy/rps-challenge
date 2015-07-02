require 'game'

describe 'game' do

  it 'fails if the user does not enter a valid choice' do
    expect { RPS.new.play 'mario' }.to raise_error 'please enter a valid option'
  end

#Tests written for old version with helper methods
  # it 'allows the user to enter a choice' do
  #   expect(RPS.new.user_choice 'paper').to eq 'paper'
  # end
  # 
  # it 'selects a random choice for the computer' do
  #   choices = ['rock', 'paper', 'scissors']
  #   expect(choices).to include RPS.new.computer_choice
  # end
  #
  # it 'says if the user loses' do
  #   new_game = RPS.new
  #   computer = 'rock'
  #   human = new_game.user_choice 'scissors'
  #   expect(new_game.play human, computer).to eq 'You lose, rock breaks scissors'
  # end
  #
  # it 'says if the user wins' do
  #   new_game = RPS.new
  #   computer = 'rock'
  #   human = new_game.user_choice 'paper'
  #   expect(new_game.play human, computer).to eq 'You win, paper covers rock'
  # end
  #
  # it 'says if the user ties the computer' do
  #   new_game = RPS.new
  #   computer = 'rock'
  #   human = new_game.user_choice 'rock'
  #   expect(new_game.play human, computer).to eq 'Tie'
  # end
end
