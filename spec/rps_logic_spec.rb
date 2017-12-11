require './lib/rps_logic'

describe RpsLogic do

  subject(:rps) { described_class.new("rock") }
  it 'should initialize with the players choice of rock, paper, or scissors' do
    expect(rps.choice).to eq("rock")
  end
end
