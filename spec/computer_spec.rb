require 'computer'

describe Computer do
  subject(:computer){ described_class.new }
  it 'has a weapon' do
    expect(computer).to respond_to(:weapon)
  end
end
