require 'game'

describe Game do

  subject(:game) { described_class.new(player, computer) }
  let(:player) { double :player }
  let(:computer) { double :computer }

  describe "player 1 winning" do
    it "checks paper beats rock" do
      allow(player).to receive(:turn) {'paper'}
      allow(computer).to receive(:turn) {'rock'}
      expect(subject.winner).to eq player
    end

    it "checks rock beats scissors" do
      allow(player).to receive(:turn) {'rock'}
      allow(computer).to receive(:turn) {'scissors'}
      expect(subject.winner).to eq player
    end

    it "checks scissors beats paper" do
      allow(player).to receive(:turn) {'scissors'}
      allow(computer).to receive(:turn) {'paper'}
      expect(subject.winner).to eq player
    end
  end

  describe "computer winning" do
    it "checks paper beats rock" do
      allow(player).to receive(:turn) {'rock'}
      allow(computer).to receive(:turn) {'paper'}
      expect(subject.winner).to eq computer
    end

    it "checks rock beats scissors" do
      allow(player).to receive(:turn) {'scissors'}
      allow(computer).to receive(:turn) {'rock'}
      expect(subject.winner).to eq computer
    end

    it "checks scissors beats paper" do
      allow(player).to receive(:turn) {'paper'}
      allow(computer).to receive(:turn) {'scissors'}
      expect(subject.winner).to eq computer
    end
  end

  describe "a draw" do
    it "checks paper beats rock" do
      allow(player).to receive(:turn) {'rock'}
      allow(computer).to receive(:turn) {'rock'}
      expect(subject.winner).to eq 'Draw'
    end

    it "checks rock beats scissors" do
      allow(player).to receive(:turn) {'scissors'}
      allow(computer).to receive(:turn) {'scissors'}
      expect(subject.winner).to eq 'Draw'
    end

    it "checks scissors beats paper" do
      allow(player).to receive(:turn) {'paper'}
      allow(computer).to receive(:turn) {'paper'}
      expect(subject.winner).to eq 'Draw'
    end
  end
end
