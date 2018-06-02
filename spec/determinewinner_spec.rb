describe DetermineWinner do

  it 'player can win' do
    determinewinner = DetermineWinner.new
    result = determinewinner.result(computer: "Rock", player: "Paper")
    expect(result).to eq "Player wins"
  end

  it 'player can lose' do
    determinewinner = DetermineWinner.new
    result = determinewinner.result(computer: "Rock", player: "Scissors")
    expect(result).to eq "Computer wins"
  end

  it 'player and computer can draw' do
    determinewinner = DetermineWinner.new
    result = determinewinner.result(computer: "Rock", player: "Rock")
    expect(result).to eq "Draw"
  end

end
