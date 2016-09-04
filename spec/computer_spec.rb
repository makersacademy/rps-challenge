require 'computer'

describe Computer do
  subject(:computer) {described_class.new}

  context '#choice' do
    it 'returns a random value of the rps array' do
      choice = computer.choice
      expect(computer.instance_variable_get(:@rps_values)).to be_include(choice)
    end
  end

  context '#add_win' do
    it 'add 1 to the winned games' do
      computer.add_win
      expect(computer.wins).to eq 1
    end
    it 'returns itself' do
      expect(computer.add_win).to eq computer
    end
  end

end
