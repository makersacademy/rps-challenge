require 'computer'

describe Computer do
  subject(:computer) { described_class.new }

  it 'has a constant with the 3 options' do
    expect(Computer::OPTIONS).to eq ['Rock', 'Paper', 'Scissors']
  end

  context '#make_choice' do
    it 'returns a random option' do
      allow(Computer::OPTIONS).to receive(:sample).and_return('Paper')
      computer.make_choice
      expect(computer.choice).to eq 'Paper'
    end

    it 'returns an option from Computer::OPTIONS array' do
      computer.make_choice
      expect(Computer::OPTIONS).to include(computer.choice)
    end
  end
end
