require 'computer'

describe Computer do
  subject(:computer) { described_class.new }

  it 'test that the array of possible answers are returned when called' do
    expect(computer.options).to eq ["Rock", "Paper", "Scissors"]
  end

  it 'should test that sample of the array is returned' do
    allow(computer).to receive(:choice) {"Rock"}
    expect(computer.choice).to eq "Rock"
  end

end
