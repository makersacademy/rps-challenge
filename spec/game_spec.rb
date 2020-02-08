describe Game do
  let(:player) { double :player }

  subject { described_class.new(player)}

  it 'stores a player' do
    expect(subject.player).to eq player
  end

end