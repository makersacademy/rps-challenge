require 'computer'

describe Computer do
  subject(:computer){described_class.new}

  it 'samples weapons from array' do
    allow(computer).to receive(:computer_play).and_return(:rock)
    expect(computer.computer_play).to eq :rock
  end

end
