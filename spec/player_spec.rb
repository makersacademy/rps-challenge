require 'player'

describe Player do
  player = described_class.new('Guillaume')
  it 'has a name' do
    expect(player.name). to eq 'Guillaume'
  end

  xit 'can choose a hand' do
  end

  xit 'can only choose a hand that is Rock paper or Scissors' do
  end

end
