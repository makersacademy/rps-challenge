require 'rps_calculation'

describe RpsCalculation do

  it 'returns Rock' do
    srand(1000)
    expect(RpsCalculation.new.computer_rps).to eq 'Rock'
  end

  it 'returns Scissors' do
    rand(1001)
    expect(RpsCalculation.new.computer_rps).to eq 'Scissors'
  end

  it 'returns Paper' do
    rand(1002)
    expect(RpsCalculation.new.computer_rps).to eq 'Paper'
  end

end
