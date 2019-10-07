describe RPSGame do
  subject(:game) { described_class.new(marketer_1, marketer_2) }
  let(:marketer_1) { double :player }
  let(:marketer_2) { double :player }

  it 'accepts two player instances' do
    expect(game.marketer_1).to eq(marketer_1)
    expect(game.marketer_2).to eq(marketer_2)
  end
end
