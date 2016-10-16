require "computer"

describe Computer do
  subject(:computer) { described_class.new }

  it "chooses an option" do
    options = ["Rock", "Paper", "Scissors"]
    computer.choose
    expect(options).to include computer.choice
  end
end
