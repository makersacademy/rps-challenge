require 'game'

describe Game do
  subject(:game) { described_class.new }
  
  it "stores the rules of rock paper scissors" do
    expect { Game::RULES }.not_to raise_error
  end
end
