require 'computer'

describe Computer do
  subject(:computer) { described_class.new }
  let(:weapon) { 'Rock' }

  it 'returns a random weapon' do
    srand(0)
    expect(computer.random_weapon).to eq weapon
  end
end
