describe "#result" do
  it "returns win if player1 wins" do
    expect(Result.new.calculate("Rock", "Scissors")).to eq 'Win'
  end
  it 'returns draw if draw' do
    expect(Result.new.calculate("Paper", "Paper")).to eq 'Draw'
  end
  it 'returns loose if player1 looses' do
    expect(Result.new.calculate("Scissors", "Rock")).to eq 'Loose'
  end
end
