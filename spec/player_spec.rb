require 'player'

describe Player do
  subject { Player.new("Ifrah") }

  it 'allows player to enter a name' do
    expect(subject.name).to eq("Ifrah")
  end
end
