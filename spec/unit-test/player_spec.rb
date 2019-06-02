require './lib/player'

describe 'Player' do
  let(:player) {Player.new("Jackie Chan")}

  it "can create a new instance of player" do
    expect(player.name).to eql("Jackie Chan")
  end

  describe 'move' do
    it 'player can make a move' do
      game_double = double("game")
      player = Player.new("james",game_double)
      expect(game_double).to receive(:move).with("scissors")
      player.move("scissors")
    end
  end

  # describe '#rock' do
  #   it 'player can choose rock' do
  #   expect(player).to receive(:rock)
  #   end
  # end

  # describe '#paper' do
  #   it 'player can choose paper' do
  #   expect(player).to receive(:rock)
  #   end
  # end
  #

end
