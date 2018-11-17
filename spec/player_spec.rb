require 'player'

describe Player do
  it 'respond to a new instance of Player' do
    subject = Player.new("The Hulk")
    expect(subject.name).to eq "The Hulk"
  end
end
