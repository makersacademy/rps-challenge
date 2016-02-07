require 'game'

describe Game do
  subject(:game) {described_class.new}

  it 'can select rock at random' do
    allow(game).to receive(:random).and_return(1)
    game.set_option
    expect(game.rock).to eq true
  end

  it 'can select paper at random' do
    allow(game).to receive(:random).and_return(2)
    game.set_option
    expect(game.paper).to eq true
  end

  it 'can select scissors at random' do
    allow(game).to receive(:random).and_return(3)
    game.set_option
    expect(game.scissors). to eq true
  end

  it 'prints the result' do
    allow(game).to receive(:random).and_return(2)
    game.set_option
    message = "Computer Chose Paper: You Lose"
    expect(game.result("Rock")).to eq message
  end

end
