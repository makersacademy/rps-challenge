require 'rps'

describe Rps do
  subject(:rps) { described_class.new(player_1, player_2) }
  let(:player_1) { double :player, name: 'Sean' }
  let(:player_2) { double :player, name: 'Tyson' }

  describe '#player_1' do
    it 'retrieves the first player' do
      expect(rps.player_1).to eq player_1
    end
  end

  describe '#player_2' do
    it 'retrieves the second player' do
      expect(rps.player_2).to eq player_2
    end
  end

  describe '#p1_choice' do
    it 'saves the move to a variable' do
      expect(rps.p1_choice(:paper)).to eq rps.p1_move
    end
  end

  describe '#p2_choice' do
    it 'saves the move to a variable' do
      expect(rps.p2_choice(:rock)).to eq rps.p2_move
    end
  end

  context 'players have alread made a choice' do
    before(:each) do
      rps.p1_choice(:paper)
      rps.p2_choice(:rock)
      rps.game
    end
    
    describe '#game' do
      it 'the game provide the correct winner' do
        expect(rps.winner).to eq player_1
      end
    end

    describe '#wins' do
      it 'adds the winner to the variable' do
        rps.wins(player_2)
        expect(rps.winner).to eq player_2
      end
    end

    describe '#the_winner' do
      it 'returns the winner in a string' do
        expect(rps.the_winner).to eq "the winner is Sean"
      end
    end
  end
end


    