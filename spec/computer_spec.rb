require 'computer'

describe Computer do

  subject(:computer){described_class.new}

  it "has rock, paper, scissors" do
    expect(Computer::OPTIONS).to eq ["rock", "paper","scissors"]
  end
end