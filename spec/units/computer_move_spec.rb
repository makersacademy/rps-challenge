
require './lib/computer_move.rb'

describe ComputerMove do
  subject { ComputerMove.new }
  it "generates random move" do
    allow(subject).to receive(:random) {"Rock"}
    expect(subject.random).to eq("Rock")
  end
end
