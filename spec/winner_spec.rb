require 'winner'

describe Winner do

  let(:player1_double) { double :player1, name: 'Mama'}
  let(:player2_double) { double :player2, name: 'WOPR'}
  subject(:winner) { Winner.new }
  
  describe '#who_wins' do

    context 'player 1 picks rock' do
  
      it ' player 1 picks rock and player 2 pick the same' do
        allow(player1_double).to receive(:move).and_return('Rock')
        allow(player2_double).to receive(:move).and_return('Rock')
        expect(winner.who_wins(player1_double,player2_double)).to eq('Tie')
      end
  
      it ' player 1 picks rock and player 2 picks scissors - player 1 win' do
        allow(player1_double).to receive(:move).and_return('Rock')
        allow(player2_double).to receive(:move).and_return('Scissors')
        expect(winner.who_wins(player1_double, player2_double)).to eq('Mama')
      end
  
      it ' player 1 picks rock and player 2 picks paper - player 1 win' do
        allow(player1_double).to receive(:move).and_return('Rock')
        allow(player2_double).to receive(:move).and_return('Paper')
        expect(winner.who_wins(player1_double, player2_double)).to eq('WOPR')
      end
    end

    context 'player 1 picks scissors' do
  
      it ' player 1 picks rock and player 2 pick the same' do
        allow(player1_double).to receive(:move).and_return('Scissors')
        allow(player2_double).to receive(:move).and_return('Scissors')
        expect(winner.who_wins(player1_double,player2_double)).to eq('Tie')
      end
  
      it ' player 1 picks rock and player 2 picks scissors - player 1 win' do
        allow(player1_double).to receive(:move).and_return('Scissors')
        allow(player2_double).to receive(:move).and_return('Paper')
        expect(winner.who_wins(player1_double, player2_double)).to eq('Mama')
      end
  
      it ' player 1 picks rock and player 2 picks paper - player 1 win' do
        allow(player1_double).to receive(:move).and_return('Scissors')
        allow(player2_double).to receive(:move).and_return('Rock')
        expect(winner.who_wins(player1_double, player2_double)).to eq('WOPR')
      end
    end

    context 'player 1 picks paper' do
  
      it ' player 1 picks rock and player 2 pick the same' do
        allow(player1_double).to receive(:move).and_return('Paper')
        allow(player2_double).to receive(:move).and_return('Paper')
        expect(winner.who_wins(player1_double,player2_double)).to eq('Tie')
      end
  
      it ' player 1 picks rock and player 2 picks scissors - player 1 win' do
        allow(player1_double).to receive(:move).and_return('Paper')
        allow(player2_double).to receive(:move).and_return('Rock')
        expect(winner.who_wins(player1_double, player2_double)).to eq('Mama')
      end
  
      it ' player 1 picks rock and player 2 picks paper - player 1 win' do
        allow(player1_double).to receive(:move).and_return('Paper')
        allow(player2_double).to receive(:move).and_return('Scissors')
        expect(winner.who_wins(player1_double, player2_double)).to eq('WOPR')
      end
    end
  end
end