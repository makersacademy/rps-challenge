require 'rps_game'

describe Rps_game do

  it 'the computer selects rock, paper or scissors' do
    #setup
    game = Rps_game.new("Me")
    #exercise
    game.rps_selector
    #verify
  expect(game.rps_selector).to match ('(Rock|Paper|Scissors)')
  end

  it 'takes the input from a user' do
    #setup
    game = Rps_game.new("Me")
    #exercise
    #verify
    expect(game.choice("Rock")).to match ('(Rock|Paper|Scissors)')
  end

end
