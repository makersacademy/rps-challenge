require 'player'

describe Player do
  it 'has five weapons' do
    expect(subject.weapons.size).to eq 5
  end
end
