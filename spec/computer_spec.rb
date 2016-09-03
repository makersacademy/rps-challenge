require 'computer'

describe Computer do
  subject(:computer) {described_class.new}

  context '#choice' do
    it 'returns a random value of the rps array' do
      choice = computer.choice
      expect(computer.instance_variable_get(:@rps_values)).to be_include(choice)
    end
  end

  context '#reduce_lives' do
    it 'reduces the lives of the computer' do
      computer.reduce_lives
      expect(computer.instance_variable_get(:@lives)).to eq 0
    end
    it 'returns itself' do
      expect(computer.reduce_lives).to eq computer
    end
  end

end
