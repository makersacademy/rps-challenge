require 'game'

describe Game do

  it { expect(subject).to respond_to(:first_turn).with(1).argument }
  it { expect(subject).to respond_to(:switch_turn) }
  it { expect(subject).to respond_to(:all_players_selected_choice?) }

  let (:player_1) { double :player}
  let (:player_2) { double :player}

  before {
    allow(player_1).to receive(:choice).and_return('Scissors')
    allow(player_2).to receive(:choice).and_return('Paper')
  }
  describe '#first_turn' do
    context 'when set first turn' do
      it 'defines active player' do
        game = Game.new(player_1, player_2)
        game.first_turn(player_1)
        expect(player_1).to eq(game.active_player)
      end
    end
  end
  describe '#switch_turn' do
    context 'when switch turn' do
      it 'switches turn to another player' do
        game = Game.new(player_1, player_2)
        game.first_turn(player_1)
        game.switch_turn
        expect(player_2).to eq(game.active_player)
      end
    end
  end
  describe '#all_players_selected_choice?' do
    context 'all players made decision' do
      it 'returns tru' do
        game = Game.new(player_1, player_2)
        expect(game.all_players_selected_choice?).to eq(true)
      end
    end
    context 'not all players made decision' do
      before {
        allow(player_1).to receive(:choice).and_return('Scissors')
        allow(player_2).to receive(:choice).and_return(nil)
      }
      it 'returns tru' do
        game = Game.new(player_1, player_2)
        expect(game.all_players_selected_choice?).to eq(false)
      end
    end
  end
end
