require 'computer'

describe Computer do
  subject(:computer) { described_class.new }
  let(:weapon) { 'Paper' }

  it 'chooses a random weapon' do
  allow(computer).to receive(:choice).and_return(weapon)
  expect(computer.choice).to eq weapon
  end
end
