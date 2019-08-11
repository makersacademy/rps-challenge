require_relative '../lib/game'
describe Game do
  let(:player) { double(:player, name: "Cher") }

  subject {described_class.new(player)}

  it 'shows player name' do
    expect(subject.player_name).to eq("Cher")
  end

  it 'shows player wins' do
    subject.player_move('rock')
    srand(1)
    expect(subject.tie?).to eq(false)
    expect(subject.player_wins?).to eq(true)

  end



end
