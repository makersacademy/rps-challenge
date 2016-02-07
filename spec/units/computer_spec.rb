require 'computer'

describe Computer do

subject(:computer) {described_class.new}

describe "#move " do
  it "returns a rock / paper /scissors move" do
  expect(computer.move).to be_a (Symbol)
  end
end

describe "#moves" do
  it 'returns a list of different moves' do
    expect(computer.moves).to be_a (Array)
  end

  it 'can return a symbol' do
    expect(computer.moves[0]).to eq(:Rock)
  end
end












end