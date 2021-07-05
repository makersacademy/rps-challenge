require 'player'

describe Player do
  subject = Player.new("Jed", "Rock")
  it '#name' do
    expect(subject.name).to eq("Jed")
  end

  it '#move' do
    expect(subject.move).to eq("Rock")
  end
end
