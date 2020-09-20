require 'game'

describe Game do
  subject(:game) { Game.new("Penn", "Teller") }
  it 'initializes with 2 players' do
    expect(game.p1).to eq "Penn"
    expect(game.p2).to eq "Teller"
  end

  it 'allows a computer opponent' do
    solo_game = Game.new("Crusoe")
    expect(solo_game.p1).to eq "Crusoe"
    expect(solo_game.p2).to eq "AI"
  end

  describe '#p1_choice' do
    it 'returns the value of player choice' do
      expect(game.p1_choice('lizard')).to eq 4
    end
  end 

end
    