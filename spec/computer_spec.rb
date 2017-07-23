require 'computer'

describe Computer do

  subject(:computer) { described_class.new }
  let(:computer_1) { double :computer, select_random_move: 'Scissors'}

  describe '#computers_move' do
    it 'outputs a random move' do
      expect(computer_1.select_random_move).to eq 'Scissors'
    end
  end

  describe '#points' do
    it 'outputs the points value' do
      expect(computer.points).to eq Computer::STARTING_POINTS
    end
  end

  describe '#increase_points' do
    it 'increases the computer points when they win the round' do
    expect{ computer.increase_points }.to change { computer.points }.by(+10)
    end
  end
end
