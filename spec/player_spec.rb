require 'player'

describe Player do
  let(:player) { described_class.new('Guillaume') }
  it 'has a name' do
    expect(player.name).to eq 'Guillaume'
  end

  it 'can choose a hand' do
    expect(player.chose_hand('Rock')).to eq 'Rock'
  end

  it 'can only choose a hand that is Rock, Paper or Scissors' do
    expect { player.chose_hand('yo') } .to raise_error 'This is not a RPS hand!'
  end
end
