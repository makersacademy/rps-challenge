require 'game'

describe Game do

  let(:player) { double (:player), selection: nil}
  let(:rock_player) { double (:player), selection: :rock }
  let(:paper_player) { double (:player), selection: :paper }
  let(:scissors_player) { double (:player), selection: :scissors }

  it 'can check to see if there is a winner' do
    subject = Game.new player, player
    expect(subject).to respond_to(:check_win)
  end

  it 'raises an error if only one player has made a choice' do
    subject = Game.new player, rock_player
    expect(subject.check_win).to eq("Only one player has made their selection")
  end

  it 'lets you know when there has been a draw' do
    subject = Game.new rock_player, rock_player
    expect(subject.check_win).to eq("Draw!")
  end

  it 'paper beats rock' do
  subject = Game.new rock_player, paper_player
  expect(subject.check_win).to be(paper_player)
  end

  it 'rock beats scissors' do
    subject = Game.new rock_player, scissors_player
    expect(subject.check_win).to be(rock_player)
  end

  it 'scissors beats paper' do
    subject = Game.new paper_player, scissors_player
    expect(subject.check_win).to be(scissors_player)
  end

end
