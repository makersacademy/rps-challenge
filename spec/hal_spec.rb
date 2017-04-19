require "hal"

describe Hal do
  subject(:hal) { described_class.new }
  let(:attacks) { hal.attack }

  it "attack with Rock, Paper or Scissors" do
    expect(hal.attacks).to include(hal.attack)
  end
end
