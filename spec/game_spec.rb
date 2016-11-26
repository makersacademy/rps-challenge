require 'game'

describe Game do
  subject(:game) { described_class.new }

  it "stores the rules of rock paper scissors" do
    expect { Game::RULES }.not_to raise_error
  end

  it "stores a list of the weapons as a constant" do
    expect { Game::WEAPONS }.not_to raise_error
  end
end
