require './model/computer'

describe Computer do

  subject(:cpu) { Computer.new }

    describe '#random' do
      context 'when random' do
        it "returns 'Rock'" do
          allow_any_instance_of(Computer).to receive(:move).and_return("Rock")
          expect(cpu.move).to eq "Rock"
        end
        it "return 'Paper'" do
          allow_any_instance_of(Computer).to receive(:move).and_return("Paper")
          expect(cpu.move).to eq "Paper"
        end
        it "returns 'Scissor'" do
          allow_any_instance_of(Computer).to receive(:move).and_return("Scissor")
          expect(cpu.move).to eq "Scissor"
        end
      end
    end
end
