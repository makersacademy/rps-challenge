require 'game'

describe Game do
  let(:player) { double("player") }
  subject { Game.new(player) }
  context '#cp_move' do
    it 'makes a random move for the computer' do
      expect(['Rock', 'Paper', 'Scissors']).to include(subject.cp_move)
    end
  end
end
