require 'game'

describe Game do
  let(:player_1) {double :player_1, name: 'Michael'}
  let(:player_2) {double :player_2, name: 'Emma'}

  subject {Game.new(player_1, player_2)}

  before(:each) do
    allow(player_1).to receive(:draws) {0}
    allow(player_1).to receive(:wins) {0}
    allow(player_1).to receive(:losses) {0}
    allow(player_2).to receive(:draws) {0}
    allow(player_2).to receive(:wins) {0}
    allow(player_2).to receive(:losses) {0}
    allow(player_1).to receive(:draws=) {0}
    allow(player_1).to receive(:wins=) {0}
    allow(player_1).to receive(:losses=) {0}
    allow(player_2).to receive(:draws=) {0}
    allow(player_2).to receive(:wins=) {0}
    allow(player_2).to receive(:losses=) {0}
  end

  it 'returns the winner of two choices(1)' do
    allow(player_1).to receive(:current_selection) {:lizard}
    allow(player_2).to receive(:current_selection) {:rock}
    expect(subject.play).to eq 'Emma wins! Rock beats lizard.'
  end

  it 'returns the winner of two choices(2)' do
    allow(player_1).to receive(:current_selection) {:rock}
    allow(player_2).to receive(:current_selection) {:paper}
    expect(subject.play).to eq 'Emma wins! Paper beats rock.'
  end

   it 'returns a draw when the selection is the same' do
    allow(player_1).to receive(:current_selection) {:rock}
    allow(player_2).to receive(:current_selection) {:rock}
    expect(subject.play).to eq 'Draw! You have both selected rock.'
  end
end
