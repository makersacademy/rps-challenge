require 'computer_player'

describe ComputerPlayer do

  let(:computer_player) { described_class.new }

    it 'allows the computer to choose a weapon' do
      computer_player.choose_weapon
      expect(computer_player.weapon_choice).to satisfy { |weapon| weapon == :scissors || weapon == :rock || weapon == :paper }
    end
end
