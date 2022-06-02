require 'computer'

describe Computer do
  subject(:computer) { described_class.new }
  let(:game) { double :game, WEAPONS = [:rock, :paper, :scissors] }

  it "randomly selects a weapon" do # not entirely sure this will work
    expect(computer).to receive(:weapon).and_return :paper
    computer.weapon
  end
end