describe Game do
  subject(:game) { described_class.new("Rock") }
  it 'accepts a player move' do
    expect(subject.move).to eq("Rock")
  end
  it 'randomly generates a computer move' do
    expect(subject.computer_move).to eq("Rock").or eq("Paper").or eq("Scissors")
  end
end
