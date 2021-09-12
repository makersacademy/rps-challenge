require 'computer' 

describe Computer do
  subject(:computer) { described_class.new }

  it 'has name Computer upon initialization' do
    expect(computer.name).to eq "Computer"
  end

  it 'returns a randomly selected choice' do
    expect(computer.choose_random).to eq computer.choice
  end
end
