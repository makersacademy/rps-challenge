describe Game do
  let(:game) { Game.new("name") }
  
  before do
    srand(2)
  end

  describe '#play_computer' do
    it 'should tell the player they have lost' do
      game.the_player.choose("scissors")
      expect(game.play_computer).to eq "Lose"
    end
  end

  describe '#play_computer' do
    it 'should tell the player they have won' do
      game.the_player.choose("paper")
      expect(game.play_computer).to eq "win"
    end
  end

  describe '#play_computer' do
    it 'should tell the player they have drawn' do
      game.the_player.choose("rock")
      expect(game.play_computer).to eq "Draw"
    end
  end
end
