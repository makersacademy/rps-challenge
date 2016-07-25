require 'rules'

describe Rules do
  let(:player1) { double(:player, name: "Player 1") }
  let(:player2) { double(:computerplayer, name: "Computer") }


  describe 'on initialization' do
    subject(:rules) { described_class.new("rps") }


    it 'has 3 options if RPS' do
      expect(Rules::RPS_OPTIONS).to include(:rock, :paper, :scissors)
    end

    it 'has 5 options if RPSSL' do
      expect(Rules::RPSSL_OPTIONS).to include(:spock, :lizard)
    end

    context '#winner shows the player won if' do

      it 'rock beats scissors' do
        allow(player1).to receive(:action).and_return(:rock)
        allow(player2).to receive(:action).and_return(:scissors)
        expect(rules.winner(player1, player2)).to eq player1.name
      end

      it 'paper should beat rock' do
        allow(player1).to receive(:action).and_return(:paper)
        allow(player2).to receive(:action).and_return(:rock)
        expect(rules.winner(player1, player2)).to eq player1.name
      end

      it 'scissors should beat paper' do
        allow(player1).to receive(:action).and_return(:scissors)
        allow(player2).to receive(:action).and_return(:paper)
        expect(rules.winner(player1, player2)).to eq player1.name
      end
    end

    context '#winner shows player2 won if' do

      it 'rock defeated by paper' do
        allow(player1).to receive(:action).and_return(:rock)
        allow(player2).to receive(:action).and_return(:paper)
        expect(rules.winner(player1, player2)).to eq player2.name
      end

      it 'paper defeated by scissors' do
        allow(player1).to receive(:action).and_return(:paper)
        allow(player2).to receive(:action).and_return(:scissors)
        expect(rules.winner(player1, player2)).to eq player2.name
      end

      it 'scissors defeated by rock' do
        allow(player1).to receive(:action).and_return(:scissors)
        allow(player2).to receive(:action).and_return(:rock)
        expect(rules.winner(player1, player2)).to eq player2.name
      end
    end

    context '#winner shows draw' do
      it 'if both select the same action' do
        allow(player1).to receive(:action).and_return(:rock)
        allow(player2).to receive(:action).and_return(:rock)
        expect(rules.winner(player1, player2)).to eq "Draw"
      end
    end

  end

end
