require 'spec_helper'

describe Player do
  let(:player) { described_class.new('Bob') }
  let(:game) { double :game }

  context 'remembers things about itself' do
    it 'stores name to identify itself' do
      expect(player.name).to eq 'Bob'
    end
  end

  context 'game management' do
    it 'joins selected game' do
      expect(game).to receive(:add).with(player)
      player.join(game)
    end

    it 'quits game when bored' do
      allow(game).to receive(:add)
      expect(game).to receive(:remove).with(player)
      player.join(game)
      player.quit
    end
  end

  context 'can choose hands' do
    it 'chooses hand and remembers it' do
      expect(player.choose(:rock)).to eq :rock
      expect(player.choice).to eq :rock
    end
  end
end
