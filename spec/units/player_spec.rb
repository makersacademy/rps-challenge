require 'player'

describe Player do
  subject(:player) { described_class.new('Paul') }
  
  it 'initializes with a name' do
    expect(player.name).to eq 'Paul'
  end

  describe '#computer?' do
    context 'when player controlled' do
      it 'returns false' do
        expect(player.computer?).to be false
      end
    end
    context 'when computer controlled' do
      it 'returns true' do
        computer_player = described_class.new('Computer', true)
        expect(computer_player.computer?).to be true
      end
    end
  end

  describe '#set_choice' do
    context 'when choice is valid' do
      it 'stores it in lowercase' do
        chosen_option = 'Rock'
        player.set_choice(chosen_option)
        expect(player.choice).to eq chosen_option.downcase
      end
    end
    context 'when choice is invalid' do
      it 'raises an error' do
        expect { player.set_choice('Blunderbuss') }.to raise_error 'Not a valid option'
      end
    end
  end

  describe '#clear_choice' do
    it 'sets choice to nil' do
      chosen_option = 'Rock'
      player.set_choice(chosen_option)
      player.clear_choice
      expect(player.choice).to be_nil
    end
  end  
end
