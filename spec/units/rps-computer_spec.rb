require 'rps-computer'

describe RPSComputer do
  describe '::new' do
    it 'returns Rock as a string', focus: true do
      srand(67810)
      expect(RPSComputer.new.to_s).to eq 'Rock'
    end

    it 'returns Paper as a string', focus: true do
      srand(67808)
      expect(RPSComputer.new.to_s).to eq 'Paper'
    end

    it 'returns Scissors as a string', focus: true do
      srand(67809)
      expect(RPSComputer.new.to_s).to eq 'Scissors'
    end
  end
end