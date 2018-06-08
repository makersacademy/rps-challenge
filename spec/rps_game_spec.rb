require 'rps_game'

describe RpsGame do

  it 'the computer selects rock, paper or scissors' do
    # setup
    game = RpsGame.new
    # exercise
    # this is a a freaking stub!!!!
    allow(game).to receive(:rps_selector) { "Rock" }
    # verify
    expect(game.rps_selector).to eq("Rock")
  end

  it 'takes the input from a user' do
    # setup
    game = RpsGame.new
    # exercise
    game.choice('Rock')
    # verify
    expect(game.choice("Rock")).to eq("Rock")
  end

end
