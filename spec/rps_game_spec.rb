require 'rps_game'

describe RpsGame do

  it 'the computer selects rock, paper or scissors' do
    # setup
    game = RpsGame.new("Me")
    # exercise
    game.rps_selector
    # verify
    expect(game.rps_selector).to match ('Rock|Paper|Scissors')
  end

  it 'takes the input from a user' do
    # setup
    game = RpsGame.new("Me")
    # exercise
    # verify
    expect(game.choice("Rock")).to match ('Rock|Paper|Scissors')
  end

end
