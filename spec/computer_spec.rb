require 'computer' 

describe Computer do
  subject(:computer) { described_class.new }

  it 'returns a randomly selected choice' do
    expect(computer.choose_random).to eq computer.choice
  end
end
