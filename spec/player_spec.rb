require 'player'

describe Player do
  let(:the_rock) { described_class.new('Dwayne Johnson')}
  describe '#name' do
    it 'returns the players name' do
      expect(the_rock.name).to eq 'Dwayne Johnson'
    end
  end

  describe '#move' do
    it 'lets you set the players move' do
      the_rock.set_move('rock')
      expect(the_rock.move).to eq 'rock'
    end
  end
end
