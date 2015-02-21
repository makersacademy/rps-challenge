require 'game.rb'

describe Game do
  let(:game){Game.new}

  context 'Adding players' do

  it 'should be able to add a player' do
    expect(game.add_player_one("Sebastien")).to eq "player1"
  end
  end

  context 'Winning game' do

  it 'should return win when player1 selects rock and player2 selects scissors' do
      expect(game.result(:rock, :scissors)).to eq 'Win!'
  end

  it 'should return win when player1 selects paper and player2 selects rock' do
      expect(game.result(:paper, :rock)).to eq 'Win!'
  end

  it 'should return win when player1 selects scissors and player2 selects paper' do
      expect(game.result(:scissors, :paper)).to eq 'Win!'
  end
  end

  context 'Losing game' do

  it 'should return lost when player1 selects scissors and player2 selects rock' do
      expect(game.result(:scissors, :rock)).to eq 'Lost!'
  end

  it 'should return lost when player1 selects rock and player2 selects paper' do
      expect(game.result(:rock, :paper)).to eq 'Lost!'
  end

  it 'should return lost when player1 selects paper and player2 selects scissors' do
      expect(game.result(:paper, :scissors)).to eq 'Lost!'
  end
  end

  context 'Draw game' do
  it 'should return draw when player1 and player2 both choose rock' do
      expect(game.result(:rock, :rock)).to eq 'Draw!'
  end

  it 'should return draw when player1 and player2 both choose paper' do
      expect(game.result(:paper, :paper)).to eq 'Draw!'
  end

  it 'should return draw when player1 and player2 both choose scissors' do
      expect(game.result(:scissors, :scissors)).to eq 'Draw!'
  end
  end

end