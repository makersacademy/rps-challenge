require 'player'

describe Player do
  it 'initializes with players name' do
    expect(subject.name).to eq 'Gandalf'
  end
end