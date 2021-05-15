require 'game'

describe Game do
  let(:player) { double("Player", name: 'Bob')}
  subject { described_class.new(player) }

  describe '#player_name' do
    it 'returns the players name' do
      expect(subject.player.name).to eq('Bob')
    end
  end

  describe '#select_random' do
    it 'returns a random choice of rock, paper or scissors' do
      srand(1234)
      # rand(3) returns 2 so 'scissors' is always returned from array of options
      expect(subject.select_random).to eq('Scissors')
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