require 'player'

describe Player do

  let(:subject) { described_class.new("Dan") }

  it "takes one arguments on intitialization" do
    expect(described_class).to respond_to(:new).with(1).arguments
  end

  it "allows a player to choose their weapon" do
    expect { subject.choose 'rock' }.not_to raise_error
  end

  it "returns the weapon selected when asked" do
    subject.choose 'rock'
    expect(subject.choice).to eq 'rock'
  end

  it "returns the players name when asked" do
    expect(subject.name).to eq 'Dan'
  end

  it 'raises an error if given invalid input' do
    expect { subject.choose 'donald' }. to raise_error "That's not a valid weapon!"
  end
end