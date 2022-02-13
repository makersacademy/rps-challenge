require './lib/game'

describe Game do

  subject(:game) { described_class.new }
  let(:round) { double }

  it 'should start with a random choice for computer' do
    allow(round).to receive(:computer).and_return("rock") 
    expect(round.computer).to eq("rock")
  end

end
