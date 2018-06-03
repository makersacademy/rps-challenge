require 'rps_game'

describe Rps_game do

  it 'the computer selects rock, paper or scissors' do
    #setup
    game = Rps_game.new("Rock")
    #exercise
    game.rps_selector
    #verify
  expect(game.rps_selector).to match ('(Rock|Paper|Scissors)')
  end

  it 'takes the input from a user' do
    #setup
    game = Rps_game.new("Rock")
    #exercise
    #verify
    expect(game.choice).to eq "Rock"
  end

end
