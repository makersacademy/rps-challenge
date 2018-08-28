require 'game'

describe Game do
  subject(:two_humans) { Game.new(Player.new, Player.new) }
  subject(:one_human) { Game.new(Player.new, ComputerPlayer.new) }
  let(:mock_player) { double :player }
  it 'keeps track of two human players' do
    expect(two_humans.players.first.is_a?(Player) && two_humans.players.last.is_a?(Player)).to be true
  end

  it 'keeps track of one human & one computer player' do
    expect(two_humans.players.first.is_a?(Player) && one_human.players.last.is_a?(ComputerPlayer)).to be true
  end

  describe '#players' do
    it 'returns the current players' do
      ga = Game.new(mock_player, mock_player)
      expect(ga.players).to eq [mock_player, mock_player]
    end
  end
end
