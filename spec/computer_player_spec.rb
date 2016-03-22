require 'computer_player'
require 'player_spec'

describe ComputerPlayer do
  let(:test_player) {described_class.new TEST_NAME}

  it_behaves_like 'a player'

  describe '#pick_attack' do

      it 'can choose one of the five signs' do
        allow_any_instance_of(Array).to receive(:sample).and_return :lizard
        expect(test_player.pick_attack).to eq :lizard
      end

  end

end
