require 'game'

describe Game do

  subject(:game) { described_class.new(player, computer) }
  let(:player) { double :player }
  let(:computer) { double :computer }

  describe "returns players weapon choice" do
      it "returns player 1's weapon" do
        expect(player).to receive(:weapon) {'Paper'}
        subject.p1_weapon
      end

      it "returns player 2's weapon" do
        expect(computer).to receive(:weapon) {'Paper'}
        subject.p2_weapon
      end
  end

  describe '#champion?' do
    it "checks if player has won the match" do
      allow(player).to receive(:points) {2}
      expect(game.champion?). to eq true
    end
  end


  describe '#winner' do

    describe "player 1 winning" do
      it "checks paper beats rock" do
        allow(player).to receive(:weapon) {'Paper'}
        allow(computer).to receive(:weapon) {'Rock'}
        expect(subject.winner).to eq player
      end

      it "checks rock beats scissors" do
        allow(player).to receive(:weapon) {'Rock'}
        allow(computer).to receive(:weapon) {'Scissors'}
        expect(subject.winner).to eq player
      end

      it "checks scissors beats paper" do
        allow(player).to receive(:weapon) {'Scissors'}
        allow(computer).to receive(:weapon) {'Paper'}
        expect(subject.winner).to eq player
      end
    end

    describe "computer winning" do
      it "checks paper beats rock" do
        allow(player).to receive(:weapon) {'Rock'}
        allow(computer).to receive(:weapon) {'Paper'}
        expect(subject.winner).to eq computer
      end

      it "checks rock beats scissors" do
        allow(player).to receive(:weapon) {'Scissors'}
        allow(computer).to receive(:weapon) {'rock'}
        expect(subject.winner).to eq computer
      end

      it "checks scissors beats paper" do
        allow(player).to receive(:weapon) {'Paper'}
        allow(computer).to receive(:weapon) {'Scissors'}
        expect(subject.winner).to eq computer
      end
    end

    describe "a draw" do
      it "checks paper beats rock" do
        allow(player).to receive(:weapon) {'rock'}
        allow(computer).to receive(:weapon) {'rock'}
        expect(subject.winner).to eq 'Draw'
      end

      it "checks rock beats scissors" do
        allow(player).to receive(:weapon) {'scissors'}
        allow(computer).to receive(:weapon) {'scissors'}
        expect(subject.winner).to eq 'Draw'
      end

      it "checks scissors beats paper" do
        allow(player).to receive(:weapon) {'paper'}
        allow(computer).to receive(:weapon) {'paper'}
        expect(subject.winner).to eq 'Draw'
      end
    end
  end
end
