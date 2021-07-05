require 'computer'

describe Computer do

    it 'initialises with a score of 0' do
        expect(subject.score).to eq 0
    end

    describe "move" do
        it 'returns paper' do
            srand(1)
            expect(subject.move).to eq "Paper"
        end
    end


end