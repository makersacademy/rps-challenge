require 'player'

describe Player do

  let(:player) { player = Player.new('name') }

  it 'can have a name' do
    expect(player.name).to eq 'name'
  end

  it 'can choose rock' do
    expect(player.choose_move('rock')).to eq :rock
  end

  it 'can choose paper' do
    expect(player.choose_move('paper')).to eq :paper
  end

  it 'can choose scissors' do
    expect(player.choose_move('scissors')).to eq :scissors
  end

  it 'can choose a valid move with uppercase characters' do
    expect(player.choose_move('ScisSors')).to eq :scissors
  end

  it "it can't choose a invalid move" do
    error_message = "That's not a valid choice"
    expect{ player.choose_move('banana') }.to raise_error(error_message)
  end

end
