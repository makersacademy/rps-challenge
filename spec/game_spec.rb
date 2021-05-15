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

  describe '#select_random' do
    it 'returns a random choice of rock, paper or scissors' do
      srand(1234)
      expect(subject.select_random).to eq('Scissors')
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
    context 'when user enters rock' do
      it "sets #result to win" do
        srand(1234)
        subject.declare_winner('Rock')    
        expect(subject.result).to eq('win')
      end
    end
    context 'when user enters paper' do
      it "sets #result to lose" do
        srand(1234)
        subject.declare_winner('Paper')
        expect(subject.result).to eq('lose')
      end
    end
    context 'when user enters scissors' do
      it "sets #result to draw" do
        srand(1234)
        subject.declare_winner('Scissors')
        expect(subject.result).to eq('draw')
      end
    end
  end
end