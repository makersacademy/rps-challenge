require 'game'

describe Game do

  let(:player) { Player.new }
  let(:opponent) { Opponent.new }

  #need some doubles in here!! Need to stub opponents 'weapon'
  describe 'winner?' do
    xit 'compares the items passed in by player and opponent' do
      subject.player.choose('rock')
      expect(subject.winner?).to eq true
    end
  end

  describe 'outcome' do
    xit 'declares a winner' do
      allow(subject).to receive(:winner?).and_return(true)
      expect(subject.outcome).to eq 'You won!!'
    end
  end

end