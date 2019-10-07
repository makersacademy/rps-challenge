require 'computer'

describe Computer do
  subject(:computer) { described_class.new }
  let(:options) { ["rock", "paper", "scossors"] }

  describe 'computer to randomly return one of 3 options ' do
    describe '#computer_move' do

      it 'computer to make a move, rock' do
        allow(options).to receive(:sample).and_return("rock")
        expect(computer.computer_move).to eq "rock"
      end

        it 'computer to make a move, paper' do
          allow(options).to receive(:sample).and_return("paper")
          expect(computer.computer_move).to eq "paper"
        end

          it 'computer to make a move, scissors' do
            allow(options).to receive(:sample).and_return("scissors")
            expect(computer.computer_move).to eq "scissors"
          end

    end
  end
end
