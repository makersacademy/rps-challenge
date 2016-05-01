require 'game'

describe Game do
  let(:paper_player) {double :player, choice: 'Paper'}
  let(:rock_player) {double :player, choice: 'Rock'}
  let(:rock_computer) {double :computer, choice: 'Rock'}
  let(:paper_computer) {double :computer, choice: 'Paper'}
  subject(:win_game) {described_class.new paper_player, rock_computer}
  subject(:tie_game) {described_class.new paper_player, paper_computer}
  subject(:lose_game) {described_class.new rock_player, paper_computer}


    describe '#player_one' do
      it 'returns player one' do
        expect(win_game.player_1).to eq paper_player
      end
    end

    describe '#create' do
      it 'creates a new instance of game within the class' do
        Game.create paper_player
        expect(Game.object).to be_a Game
      end
    end

    describe '#result' do
      it 'returns win if the player wins' do
        expect(win_game.result).to eq 'Win'
      end
      it 'returns tie if the player ties' do
        expect(tie_game.result).to eq 'Tie'
      end
      it 'returns lose if the player loses' do
        expect(lose_game.result).to eq 'Lose'
      end
    end

    describe '#win_count' do
      it 'returns the number of wins' do
        win_game.result
        expect(win_game.win_count).to eq 1
      end
    end

    describe '#tie_count' do
      it 'returns the number of ties' do
        tie_game.result
        expect(tie_game.tie_count).to eq 1
      end
    end

    describe '#loss_count' do
      it 'returns the number of losses' do
        lose_game.result
        expect(lose_game.loss_count).to eq 1
      end
    end
end
