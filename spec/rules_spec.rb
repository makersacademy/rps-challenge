require 'rules'

describe Rules do
  it "stores the rules for the game" do
    expect(subject::RULES).to eq "rock" => "scissors", "paper" => "rock", "scissors" => "paper"
  end
end