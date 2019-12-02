require 'computer'
describe 'Computer' do
  let(:computer) {Computer.new}
  it 'initialize a random weapon for computer' do
    srand(2)
    expect(computer.weapon).to eq("Rock")
  end
end
