require "computer"

describe Computer do
  subject(:computer) { described_class.new }

  it "chooses an option" do
    options = ["Rock", "Paper", "Scissors"]
    expect(options).to include computer.choice
  end
end
