require 'player'

describe Player do

  let (:name) { :name }
  subject { described_class.new(name) }

  it 'initializes with the name of the player' do
    expect(subject.name).to eq name
  end

  it 'allows the player to store their choice' do
    subject.choose("Rock")
    expect(subject.choice).to eq "Rock"
  end

end
