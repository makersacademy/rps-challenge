require 'game'

describe Game do
  let(:player1) { double :player1, is_computer?: false, name: 'name1'}
  let(:player2) { double :player2, is_computer?: false, name: 'name2'}
  let(:computer_player) { double :computer_player, is_computer?: true}
  let(:game) { described_class.new(player1, player2) }
  it 'stores the name of the players' do
    expect(game.players).to include player1, player2
  end
  it 'current_turn is set on player1 when start a new game' do
    expect(game.current_turn).to eq player1
  end
  describe '#first_player_name' do
    it 'returns the name of the first player' do
      expect(game.first_player_name).to eq 'name1'
    end
  end
  describe '#second_player_name' do
    it 'returns the name of the second player' do
      expect(game.second_player_name).to eq 'name2'
    end
  end
  describe '#current_turn_name' do
    it 'returns the name of the player that have to play' do
      expect(game.current_turn_name).to eq 'name1'
    end
  end
  describe '#switch' do
    it 'switch the turn' do
      game.switch
      expect(game.current_turn).to eq player2
    end
  end
  context 'when playing by myself' do
    let(:game) { described_class.new(player1, computer_player) }
  end
  context 'when playing with another player' do
    let(:game) { described_class.new(player1, player2) }
  end
end
