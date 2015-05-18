require 'rps'


rps1 = RPS.new
#round = double(:round {go:"rock"})
allow(rps1).to receive(:go).and_return("rock")
#allow(rps).to receive(:go) {"rock"}
#rps.stub(:go) {"rock"}
#I CANT GET THE SYNTAX FOR RSPEC TO CREATE A STUB ON METHOD GO TO RETURN ROCK, therefore can't do TDD


describe 'rps' do
  it 'will return the computer has won if human choses paper and computer choses rock (U1)'
  expect(play_round("paper")).to eq ["rock","computer"]
end