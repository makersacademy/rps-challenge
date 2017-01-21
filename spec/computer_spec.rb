require 'computer'

describe Computer do

  subject(:computer) { described_class.new }

  it 'should return a random number between 1 and 3' do
    expect(computer.chance).to be_within(1.5).of(1.5)
  end

  it 'should return a game choice based on chance' do
    allow(computer).to receive(:chance).and_return(1)
    expect(computer.select_choice).to eq(:rock)
  end

end
