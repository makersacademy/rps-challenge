require 'computer'

describe Computer do

  subject(:computer) { described_class.new }

  it 'should return a game choice based on chance' do
    allow(computer).to receive(:chance).and_return(1)
    expect(computer.select_choice).to eq(:rock)
  end

end
