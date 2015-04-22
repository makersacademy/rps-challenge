require 'game'

describe Game do
  let(:game) { described_class.new }

  it 'can add a player' do
    expect(game.add_player1("Sammy")).to eq ["Sammy"]
  end

  it 'can add a second player' do
    expect(game.add_player2("Opponent")).to eq ["Opponent"]
  end

  it 'result in a win if P1 chooses rock and P2 chooses scissors' do
    expect(game.result(:rock, :scissors)).to eq 'Win!'
  end
end