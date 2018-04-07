require "computer"

describe Computer do
  subject(:computer) { described_class.new }

  it "has a random weapon set on init" do
    expect(Computer::WEAPONS).to include(computer.weapon)
  end

end
