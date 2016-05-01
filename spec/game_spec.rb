require 'game'

describe Game do

  subject(:game) { described_class.new(player,rules,moves) }
  let(:player) {spy(:player)}
  let(:rules) {spy(:rules)}
  let(:moves) {double(:moves, :random_move => :move_2)}

  describe '#player_name' do

    it 'returns player_name' do
      game.player_name
      expect(player).to have_received(:name)
    end

    it '#play_computer' do
      game.play_computer(:move_1)
      expect(rules).to have_received(:calculate_result).with(:move_1,:move_2)
    end

  end

  it '#returns current game started by the class method' do
    new_game = Game.new_game(player,rules,moves)
    expect(Game.current_game).to eq new_game
  end



end