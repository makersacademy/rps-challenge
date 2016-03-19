require 'computer_player'

describe ComputerPlayer do
  
  describe '#pick_attack' do

      it 'can choose one of the five signs' do
        expect(described_class).to respond_to :pick_attack
      end

  end

end
