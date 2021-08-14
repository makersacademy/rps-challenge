require 'rps'

describe Play do
  it 'initializes with players name' do

    expect(subject.player).to eq 'Gandalf'
  end
end