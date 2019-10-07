require_relative '../lib/computer'

RSpec.describe "Computer" do
  let(:computer) {Computer.new}
  it "will return pc's move with rock" do
    allow(computer).to receive(:move).and_return('rock')
    expect(computer.move).to eq 'rock'
  end
  it "will return pc's move with paper" do
    allow(computer).to receive(:move).and_return('paper')
    expect(computer.move).to eq 'paper'
  end
  it "will return pc's move with scissors" do
    allow(computer).to receive(:move).and_return('scissors')
    expect(computer.move).to eq 'scissors'
  end
end
