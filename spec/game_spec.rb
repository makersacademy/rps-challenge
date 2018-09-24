require 'game'

describe Game do
  let(:player) { double("player") }
  subject { Game.new(player) }
  context '#cp_move' do
    it 'makes a random move for the computer and stores it' do
      subject.cp_move
      expect(['Rock', 'Paper', 'Scissors']).to include(subject.cp_moves[-1])
    end
  end
end
