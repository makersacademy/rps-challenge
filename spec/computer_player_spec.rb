require 'computer_player'
require 'player_spec'

describe ComputerPlayer do
  let(:test_player) {described_class.new TEST_NAME}

  it_behaves_like 'a player'

  describe '#pick_attack' do

      it 'can choose one of the five signs' do
        expect(test_player).to respond_to :pick_attack
      end

  end

end
