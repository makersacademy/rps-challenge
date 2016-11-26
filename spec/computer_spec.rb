require 'computer'

describe Computer do
  subject(:computer) { described_class.new }

  it 'test that the array of possible answers are returned when called' do
    expect(computer.options).to eq [:rock, :paper, :scissors]
  end

  it 'should test that sample of the array is returned' do
    allow(computer).to receive(:choice) {:rock}
    expect(computer.choice).to eq :rock
  end

end
