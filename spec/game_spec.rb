require 'game'

describe Game do

  subject(:game) { described_class.new(player_1,player_2,rules) }
  let(:player_1) {spy(:player_1)}
  let(:player_2) {spy(:player_1)}
  let(:rules) {spy(:rules)}

  it '#play_computer' do
    allow(rules).to receive(:random_move).and_return(:move_2)
    game.play_computer(:move_1)
    expect(rules).to have_received(:calculate_result).with(:move_1,:move_2)
  end


  it 'returns current game started by the class method' do
    new_game = Game.new_game(player_1,player_2, rules)
    expect(Game.current_game).to eq new_game
  end



end