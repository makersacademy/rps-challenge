require 'player'

describe Player do
  let(:player) { described_class.new('Sulaiman') }
  describe '::new' do
    it 'has a name' do
      expect(player.name).to eq 'Sulaiman'
    end

    it 'has a current_choice set to nil' do
      expect(player.current_choice).to eq nil
    end
  end

  describe '#choose(n)' do
    context 'when passed 1 as parameter' do
      it 'sets current_choice to rock' do
        player.choose(1)
        expect(player.current_choice).to eq 'rock'
      end
    end
  end

end
