require 'rules'

describe Rules do
  it "stores the rules for the game" do
    expect(subject::RULES).to eq 'rock' => ['scissors', 'lizard'], 
                                 'paper' => ['rock', 'spock'],
                                 'scissors' => ['paper', 'lizard'], 
                                 'lizard' => ['spock', 'paper'],
                                 'spock' => ['rock', 'scissors']
  end
end
