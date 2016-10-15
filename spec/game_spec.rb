require "game"

describe Game do
  let(:game) { double :game }
  let(:player1) { double :player, attack: :rock }
  let(:player2_cpu) { double :computer, attack: :rock }
  let(:usual_attacks) { [:rock, :paper, :scissors] }
  subject { Game.new(player1, player2_cpu) }

  describe '.create' do
    it 'should create a new instance of game class' do
      expect(Game).to receive(:new).and_return(game)
      Game.create(player1, player2_cpu)
      expect(Game.instance).to eq game
    end
  end

  describe '#initialize' do
    it 'should save player1' do
      expect(subject.player1).to eq player1
    end

    it 'should save player2' do
      expect(subject.player2).to eq player2_cpu
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

  describe '#auto_battle' do
    it 'should select given attack for player1' do
      allow(player2_cpu).to receive(:select_random).with(Game.attacks)
      expect(player1).to receive(:select_attack).with(instance_of(Symbol))
      subject.auto_battle(usual_attacks.sample)
    end
  end

  describe '#winner' do
    it 'should return the winner' do
      allow(player1).to receive(:select_attack)
      allow(player2_cpu).to receive(:attack).and_return(:scissors)
      allow(player2_cpu).to receive(:select_random).and_return(:scissors)
      subject.auto_battle(:rock)
      expect(subject.winner).to eq player1
    end
  end
end
