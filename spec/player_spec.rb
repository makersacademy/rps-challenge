require 'player'

describe Player do
  let(:obj) { double(:obj) }
  let(:player) { described_class.new(:name) }

  context '#receive_reward' do
    it 'wins increase by 1' do
      expect { player.receive_reward }.to change { player.wins }.by(1)
    end
  end

  context '#receive_reward' do
    it 'wins increase by 1' do
      expect(player.receive_choice(obj)).to eq(obj)
    end
  end
end
