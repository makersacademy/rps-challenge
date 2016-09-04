require 'game'

describe Game do

  subject { described_class.new(player, computer) }
  let(:player) { double :player }
  let(:computer) { double :computer }

  describe '#create' do
    it 'creates instance of game with player and computer' do
      expect(described_class).to receive(:new)
      described_class.create(player, computer)
    end
  end

  describe '#instance' do
    it 'returns the game instance' do
      game = described_class.create(player, computer)
      expect(described_class.instance).to eq game
    end
  end

  describe '#result' do
    it 'returns draw if player and comp choose rock' do
      allow(player).to receive(:weapon) { :rock }
      allow(computer).to receive(:weapon) { :rock }
      expect(subject.result).to eq :draw
    end

    it 'returns lose if player = rock and comp = paper' do
      allow(player).to receive(:weapon) { :rock }
      allow(computer).to receive(:weapon) { :paper }
      expect(subject.result).to eq :lose
    end

    it 'returns win if player = rock and comp = scissors' do
      allow(player).to receive(:weapon) { :rock }
      allow(computer).to receive(:weapon) { :scissors }
      expect(subject.result).to eq :win
    end

    it 'returns draw if player = paper and comp = paper' do
      allow(player).to receive(:weapon) { :paper }
      allow(computer).to receive(:weapon) { :paper }
      expect(subject.result).to eq :draw
    end

    it 'returns win if player = paper and comp = rock' do
      allow(player).to receive(:weapon) { :paper }
      allow(computer).to receive(:weapon) { :rock }
      expect(subject.result).to eq :win
    end

    it 'returns lose if player = paper and comp = scissors' do
      allow(player).to receive(:weapon) { :paper }
      allow(computer).to receive(:weapon) { :scissors }
      expect(subject.result).to eq :lose
    end

    it 'returns draw if player = scissors and comp = scissors' do
      allow(player).to receive(:weapon) { :scissors }
      allow(computer).to receive(:weapon) { :scissors }
      expect(subject.result).to eq :draw
    end

    it 'returns win if player = scissors and comp = paper' do
      allow(player).to receive(:weapon) { :scissors }
      allow(computer).to receive(:weapon) { :paper }
      expect(subject.result).to eq :win
    end

    it 'returns lose if player = scissors and comp = rock' do
      allow(player).to receive(:weapon) { :scissors }
      allow(computer).to receive(:weapon) { :rock }
      expect(subject.result).to eq :lose
    end

  end

end
