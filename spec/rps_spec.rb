require 'spec_helper'


#rps1 = RPS.new
#round = double(:round {go:"rock"})
#allow(rps1).to receive(:go).and_return("rock")
#allow(rps).to receive(:go) {"rock"}
#rps.stub(:go) {"rock"}
#I CANT GET THE SYNTAX FOR RSPEC TO CREATE A STUB ON METHOD GO TO RETURN ROCK, therefore can't do TDD


describe RPS do
  rps1 = RPS.new  #maybe? not needed because describe above will create an instance of this method.

  it 'will return the human has won if human choses paper and computer choses rock (U1)' do
    allow(rps1).to receive(:go).and_return("rock")
    expect(rps1.play_round("paper")).to eq ["rock","human"]
  end

  it 'will return the computer has won if human choses paper and computer choses scissors (U2)' do
    allow(rps1).to receive(:go).and_return("scissors")
    expect(rps1.play_round("paper")).to eq ["scissors","computer"]
  end

  it 'will return a draw if human choses paper and computer choses paper (U3)' do
    allow(rps1).to receive(:go).and_return("paper")
    expect(rps1.play_round("paper")).to eq ["paper","draw"]
  end

# how do I test the go method?


end