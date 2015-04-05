require 'player'

describe Player do
  it 'can take a name' do
    expect(described_class).to respond_to(:new).with('Name')
  end

  it 'can report its name' do
    expect(subject('Name').name).to eq 'Name'
  end
end
