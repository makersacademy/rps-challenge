require 'computer'

describe Computer do
  subject(:computer) {described_class.new}

  it 'responds to weapon method' do
    expect(computer).to respond_to :weapon
  end

  it 'randomises a weapon' do
    allow(computer).to receive(:weapon).and_return('rock')
    expect(computer.weapon).to eq 'rock'
  end
end
