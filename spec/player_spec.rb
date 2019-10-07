require 'player'

describe Player do

  subject { described_class.new("James") }

  it 'should return the player name' do
    expect(subject.name).to eq 'James'
  end

  it "allows the player's choice to be stored and updated" do
    subject.update_choice('Rock')
    expect(subject.choice).to eq 'Rock'
  end
end
