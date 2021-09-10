require 'player'

describe Player do
  subject { Player.new("Sophie") }

  it 'has a name' do
    expect(subject.name).to eq("Sophie")
  end
end