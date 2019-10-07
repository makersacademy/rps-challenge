require 'player'

describe Player do
  subject(:player) { Player.new('Darryl') }

  it { is_expected.to respond_to(:choice).with(0).arguments }

  describe '#name' do
    it 'returns the player name' do
      expect(player.name).to eq 'Darryl'
    end
  end

  describe '#rock' do
    it 'sets choice to rock' do
      expect { player.rock }.to change { player.choice }.to('rock')
    end
  end

  describe '#paper' do
    it 'sets choice to paper' do
      expect { player.paper }.to change { player.choice }.to('paper')
    end
  end

  describe '#scissors' do
    it 'sets choice to scissors' do
      expect { player.scissors }.to change { player.choice }.to('scissors')
    end
  end

  describe '#lizard' do
    it 'sets choice to lizard' do
      expect { player.lizard }.to change { player.choice }.to('lizard')
    end
  end

  describe '#spock' do
    it 'sets choice to spock' do
      expect { player.spock }.to change { player.choice }.to('spock')
    end
  end

end
