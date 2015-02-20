require 'game.rb'

describe Game do
  let(:game){Game.new}

  it 'should be able to add a player' do
    expect(game.add_player1("Sebastien")).to eq ["Sebastien"]
  end

  it 'should be able to add a second player' do
    expect(game.add_player2("Opponent")).to eq ["Opponent"]
  end

  it 'should return win when player1 selects rock and player2 selects scissors' do
      expect(game.result(:rock, :scissors)).to eq 'Win!'
  end

end