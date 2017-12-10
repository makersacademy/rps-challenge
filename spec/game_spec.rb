describe Game do
  let(:game) { Game.new("name") }


  describe '#play_computer' do
    it 'should tell the player they have lost' do
      game.the_player.choose("rock")
      expect(game.play_computer("paper")).to eq "lose"
    end
  end

  describe '#play_computer' do
    it 'should tell the player they have won' do
      game.the_player.choose("rock")
      expect(game.play_computer("scissors")).to eq "Win"
    end
  end

  describe '#play_computer' do
    it 'should tell the player they have drawn' do
      game.the_player.choose("paper")
      expect(game.play_computer("paper")).to eq "Draw"
    end
  end
end
