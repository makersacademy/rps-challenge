require 'game'

describe Game do

  let(:player) {double :player}
  let(:computer) {double :computer}
  subject(:game_class) {described_class}
  subject(:game) {described_class.new(player)}

  describe 'Game#create' do
    it 'creates a new instance of Game' do
      expect(game_class).to receive(:new)
      game_class.create(player)
    end
  end

  describe 'Game#instance' do
    it 'returns an instance of Game' do
      game_class.create(player)
      expect(game_class.instance).to be_a Game
    end
  end

  before { game.player_choice('rock') }

  describe '#result' do
    context 'player and computer draw' do
      it 'returns draw' do
        game.instance_variable_set("@computer_move", :rock)
        expect(game.result).to eq('draw')
      end
    end

    context 'player wins' do
      it 'returns win' do
        game.instance_variable_set("@computer_move", :scissors)
        allow(player).to receive(:add_points)
        expect(game.result).to eq('win')
      end
    end

    context 'player loses' do
      it 'returns lose' do
        game.instance_variable_set("@computer_move", :paper)
        expect(game.result).to eq('lose')
      end
    end
  end
end

