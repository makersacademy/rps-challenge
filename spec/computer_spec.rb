require 'computer'
describe Computer do
  let(:computer) { described_class.new }

  it 'can make a random selection' do
    expect(computer.choose).to eq(double :Rock)
  end
end
