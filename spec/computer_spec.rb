require 'computer'

describe Computer do

  it 'shoud select an item from the array' do
    allow(subject).to receive(:auto).and_return(:rock)
    expect(subject.auto).to eq :rock
  end

end
