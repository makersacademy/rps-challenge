require 'game'

describe Game do
  let(:player1) { double :player1, is_computer?: false}
  let(:player2) { double :player2, is_computer?: false}
  let(:computer_player) { double :computer_player, is_computer?: true}
  it 'stores the name of the players' do
    game = described_class.new(player1, player2)
    expect(game.players).to include player1, player2
  end
  context 'when playing by myself' do
    before do
      game = described_class.new(player1, computer_player)
    end
  end
  context 'when playing with another player' do
    before do
      game = described_class.new(player1, player2)
    end
  end
end
