require 'player'

describe Player do
  subject(:player) { described_class.new "James" }
  it 'should return the players name' do
    expect(subject.name).to eq "James"
  end

  it 'should let player make a choice' do
    subject.make_choice("Paper")
    expect(subject.choice).to eq "Paper"
  end

  it 'should initialize ai to false' do
    expect(subject.ai).to be false
  end

  it 'should be able to be designated as an ai' do
    player = Player.new("James", true)
    expect(player.ai).to be true
  end
end
