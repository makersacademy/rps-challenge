require 'game'

describe Game do
  subject(:game) { described_class.new }
  let(:person) { double :player }
  let(:computer) { double :player }

  describe '#outcome' do
    context 'person chooses "Rock"' do
      before(:each) do
        allow(person).to receive(:move).and_return("Rock")
      end

      it 'should know if person wins' do
        allow(computer).to receive(:move).and_return("Scissors")
        expect(game.outcome(person.move, computer.move)).to eq("You win!")
      end

      it 'should know if person loses' do
        allow(computer).to receive(:move).and_return("Paper")
        expect(game.outcome(person.move, computer.move)).to eq("You lose!")
      end

      it 'should know if it is a draw' do
        allow(computer).to receive(:move).and_return("Rock")
        expect(game.outcome(person.move, computer.move)).to eq("It's a draw!")
      end
    end

    context 'person chooses "Paper"' do
      before(:each) do
        allow(person).to receive(:move).and_return("Paper")
      end

      it 'should know if person wins' do
        allow(computer).to receive(:move).and_return("Rock")
        expect(game.outcome(person.move, computer.move)).to eq("You win!")
      end

      it 'should know if person loses' do
        allow(computer).to receive(:move).and_return("Scissors")
        expect(game.outcome(person.move, computer.move)).to eq("You lose!")
      end

      it 'should know if it is a draw' do
        allow(computer).to receive(:move).and_return("Paper")
        expect(game.outcome(person.move, computer.move)).to eq("It's a draw!")
      end
    end

    context 'person chooses "Scissors"' do
      before(:each) do
        allow(person).to receive(:move).and_return("Scissors")
      end

      it 'should know if person wins' do
        allow(computer).to receive(:move).and_return("Paper")
        expect(game.outcome(person.move, computer.move)).to eq("You win!")
      end

      it 'should know if person loses' do
        allow(computer).to receive(:move).and_return("Rock")
        expect(game.outcome(person.move, computer.move)).to eq("You lose!")
      end

      it 'should know if it is a draw' do
        allow(computer).to receive(:move).and_return("Scissors")
        expect(game.outcome(person.move, computer.move)).to eq("It's a draw!")
      end
    end
  end
end
