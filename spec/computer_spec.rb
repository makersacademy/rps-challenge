require 'computer'

describe Computer do
  subject(:computer) {described_class.new}

  it 'chooses from the array at random' do
    srand(1)
    expect(computer.random).to eq "paper"
  end
end