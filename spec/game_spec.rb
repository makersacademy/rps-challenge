require 'game'

describe Game do

  it 'has a player 1' do
    expect(subject).to respond_to(:player_1)
  end

  it 'has a player 2' do
    expect(subject).to respond_to(:player_2)
  end

  it { is_expected.to respond_to(:winner?) }

  xit 'creates a player' do
    expect(subject.player_1).to eq (player)
  end

  xit 'creates an opponent for each player' do
    expect(subject.player_1.opponent).to be(player_2)
  end

  define 'winner?' do
    xit 'knows if a player has won' do
      player = double :player
      allow(player).to_receive (:won?)
    end
  end

end

#  check what be matcher is as opposed to equal matcher
