require 'computer'

describe Computer do
  subject(:computer) { described_class.new }

  context '#new' do
    it 'responds to an array with 3 items' do
      expect(computer.choices.size).to eq 3
    end
  end

  context '#choice' do
    it 'responds to choice method' do
      expect(computer).to respond_to(:choice)
    end

    it 'returns a random string [rock, paper, scissors]' do
      expect(computer.choice).not_to be_empty
    end 
  end
end
