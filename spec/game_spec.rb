require 'game'

describe Player do
  subject(:player) { described_class.new(name) }
  let(:name) { double :name }
  let(:points) { double :points}

  it 'inputs a name player' do
    expect(player.name).to eq name
  end

  it 'displays the points' do
    expect(player.display_points).to eq 0
  end

  it 'computer choosing rocks' do
    allow(player).to receive(:latest_comp_move).and_return('rock')
    expect(player.latest_comp_move).to eq 'rock'
  end

  it 'expects a draw' do
    a = player.play_rock
    allow(player).to receive(:latest_comp_move).and_return("rock")
    expect(player.result(a)).to eq "It is a draw."
  end

  it 'expects user to win' do
    a = player.play_rock
    allow(player).to receive(:latest_comp_move).and_return("scissors")
    expect(player.result(a)).to eq "#{name} you won!"
  end

  it 'expects user to loose' do
    a = player.play_rock
    allow(player).to receive(:latest_comp_move).and_return("paper")
    expect(player.result(a)).to eq "#{name} you lost."
  end
end
