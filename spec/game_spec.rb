require "game"

describe Game do

  let(:game) { double :game }
  let(:player1) { double :player, attack: :rock }
  let(:player2_cpu) { double :computer, attack: :rock }
  let(:usual_attacks) { [:rock, :paper, :scissors] }

  describe '.create' do
    it 'should create a new instance of game class' do
      expect(Game).to receive(:new).and_return(game)
      Game.create
      expect(Game.instance).to eq game
    end
  end

  describe '.attacks' do
    it 'should return a list of available attacks' do
      expect(Game.attacks).to eq usual_attacks
    end
  end

  describe '#decide_winner' do

    it "should return false when attacks are the same" do
      expect(subject.decide_winner(player1, player2_cpu)).to eq false
    end

    context "player1 has rock" do
      before { allow(player1).to receive(:attack).and_return(:rock) }

      it "should return player1 if player2 has scissors" do
        allow(player2_cpu).to receive(:attack).and_return(:scissors)
        expect(subject.decide_winner(player1, player2_cpu)).to eq player1
      end

      it "should return player2 if player2 has paper" do
        allow(player2_cpu).to receive(:attack).and_return(:paper)
        expect(subject.decide_winner(player1, player2_cpu)).to eq player2_cpu
      end
    end

    context "player1 has paper" do
      before { allow(player1).to receive(:attack).and_return(:paper) }

      it "should return player1 if player2 has rock" do
        allow(player2_cpu).to receive(:attack).and_return(:rock)
        expect(subject.decide_winner(player1, player2_cpu)).to eq player1
      end

      it "should return player2 if player2 has scissors" do
        allow(player2_cpu).to receive(:attack).and_return(:scissors)
        expect(subject.decide_winner(player1, player2_cpu)).to eq player2_cpu
      end
    end

    context "player1 has scissors" do
      before { allow(player1).to receive(:attack).and_return(:scissors) }

      it "should return player1 if player2 has paper" do
        allow(player2_cpu).to receive(:attack).and_return(:paper)
        expect(subject.decide_winner(player1, player2_cpu)).to eq player1
      end

      it "should return player2 if player2 has rock" do
        allow(player2_cpu).to receive(:attack).and_return(:rock)
        expect(subject.decide_winner(player1, player2_cpu)).to eq player2_cpu
      end
    end
  end
end
