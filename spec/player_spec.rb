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

  it "if there's only one player, a computer player can give a choice" do
    allow(subject.options).to receive(:sample) { :rock }
    expect(subject.random_choice).to eq :rock
  end

end
