require 'player.rb'

describe Player do

  it "player can choose from rock, paper, scissors" do
    subject.select 'rock'
    expect(subject.choice).to eq :rock
  end

  it "raises error when player does not choose rock, paper or scissors" do
    message = "Please choose rock, paper or scissors!"
    expect{ subject.select 'bird' }.to raise_error(message)
  end

end
