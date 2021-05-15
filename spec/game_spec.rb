require 'game'

describe Game do
  let(:player_1) { double("Player", name: 'Bob')}
  let(:player_2) { double("Player", name: 'Jeremy')}
  subject { described_class.new(player_1, player_2) }

  describe '#player_name' do
    it 'returns the players name' do
      expect(subject.player_1.name).to eq('Bob')
    end
  end

  describe '#current_turn' do
    context 'at the start of the game' do
      it 'returns player_1' do
        expect(subject.current_turn).to eq(player_1)
      end
    end

    context 'after #next_turn' do
      it 'returns player_2' do
        subject.next_turn
        expect(subject.current_turn).to eq(player_2)
      end
    end
  end

  describe '#declare_winner' do
    context 'when player_1 wins' do
      it "sets #result to win" do
        subject.declare_winner('Rock', 'Scissors')    
        expect(subject.result).to eq('win')
      end
    end
    context 'when player_1 loses' do
      it "sets #result to lose" do
        subject.declare_winner('Paper', 'Scissors')
        expect(subject.result).to eq('lose')
      end
    end
    context 'when its a draw' do
      it "sets #result to draw" do
        subject.declare_winner('Scissors', 'Scissors')
        expect(subject.result).to eq('draw')
      end
    end
  end
end