require 'game'

describe Game do

  let(:player_class) { double 'player_class' }
  let(:player_move) { double 'player_move' }
  subject(:subject) { described_class.new(player_class) }

  describe '#new_move' do
    it 'calls generate computer_move method' do
      expect(subject).to receive :computer_move
      subject.new_move(player_move)
    end

    it 'calls calc_winner method' do
		  expect(subject).to receive :calc_winner
		  subject.new_move(player_move)
		end
  end
end
