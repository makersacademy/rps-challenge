require 'rps_result_logic'

describe RpsResult do
  it 'Gives the draw message when you pick rock and computer picks rock' do
    expect(RpsResult.new.result("Rock", "Rock")).to eq "It's a draw!"
  end

  it 'Gives the win message when you pick rock and computer picks scissors' do
    expect(RpsResult.new.result("Rock", "Scissors")).to eq "You win!"
  end

  it 'Gives the lose message when you pick rock and computer picks paper' do
    expect(RpsResult.new.result("Rock", "Paper")).to eq "Computer wins!"
  end
end
