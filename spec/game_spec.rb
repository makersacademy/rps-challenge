require 'game'

describe Game do
  subject(:game) {described_class.new(player)}
  let(:player) {double :player}

  it 'checks if player has won or lost' do
    expect(game.result(:rock, :scissors)).to eq :win
  end

  it 'checks if player has won or lost' do
    expect(game.result(:scissors, :rock)).to eq :lose
  end

  it 'checks if player has won or lost' do
    expect(game.result(:rock, :rock)).to eq :draw
  end

  it 'changes input to simble' do
    expect(game.player_choice("rock")). to eq :rock
  end

end
