require 'computer'

describe Computer do
    it '"move" method returns 1' do
        srand(1)
        expect(subject.move).to eq 1
    end
end