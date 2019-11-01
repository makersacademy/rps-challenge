require 'game'

describe Game do
  subject { Game.new(player_one, player_two) }
  let(:player_one) { double(:player, name: 'Bob Ross', wins: 2, losses: 1) }
  let(:player_two) { double(:player, name: 'David', wins: 5, losses: 3) }
  let(:player_one_choice) { :rock }
  let(:player_two_choice) { :paper }
  let(:winner) { player_two }

  it 'has player one' do
    expect(subject.player_one).to eq player_one
  end

  it 'has player two' do
    expect(subject.player_two).to eq player_two
  end

  it 'has a method for player one to make a move' do
    subject.player_one_chooses(player_one_choice)
    expect(subject.player_one_choice).to eq player_one_choice
  end

  it 'has a method for player two to make a move' do
    subject.player_two_chooses(player_two_choice)
    expect(subject.player_two_choice).to eq player_two_choice
  end

  it 'has a winner' do
    subject.player_one_chooses(player_one_choice)
    subject.player_two_chooses(player_two_choice)

    expect(subject.winner).to eq winner
  end
end