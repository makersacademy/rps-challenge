require "./models/computer"

RSpec.describe Computer do
  it 'allows computer to make a choice' do
    computer=Computer.new(:rock)
    expect(computer.rps).to eq(:rock)
  end
end
