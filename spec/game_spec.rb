require 'game'

describe Game do

  let(:player) { double (:player), choice: nil}
  let(:rock_player) { double (:player), choice: :rock }
  let(:paper_player) { double (:player), choice: :paper }
  let(:scissors_player) { double (:player), choice: :scissors }

  it 'can check to see if there is a winner' do
    subject = Game.new player, player
    expect(subject).to respond_to(:check_win)
  end

  it 'raises an error if only one player has made a choice' do
    subject = Game.new player, rock_player
    expect{ subject.check_win }.to raise_error("Only one player has made their choice")
  end

  it 'lets you know when there has been a draw' do
    subject = Game.new rock_player, rock_player
    expect{ subject.check_win}.to raise_error("Draw!")
  end

end
