require 'player'

describe Player do


  describe '#initialize' do
    subject(:player){described_class.new('Rock', 'Emma')}
    subject(:player_2){described_class.new}

    it 'initializes with a choice' do
      expect(player.choice).to include('Rock')
    end

    it 'initializes with a name' do
      expect(player.name).to include('Emma')
    end

    it 'assigns the choice a value' do
      expect(player.choice).to have_value(Player::CHOICE_VALUE_PAIRS['Rock'])
    end

    context 'the player is a computer' do
      subject(:player_2){described_class.new}

      it 'auto chooses a choice if no choice is passed in' do
        allow(Kernel).to receive(:rand).and_return(3)
        expect(player_2.choice).to include({"Scissors" => 3})
      end

      it 'calls itself computer' do
        expect(player_2.name).to eq('Computer')
      end
      
    end

  end





end
