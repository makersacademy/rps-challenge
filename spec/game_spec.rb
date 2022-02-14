require_relative './lib/game'

describe Game do
    subject {Class.new}

    describe '#register' do
      it 'allows player to play the game rock/paper/scissors in order to be entertained' do
      subject.play("rock/paper/scissors")
      expect(subject.play).to eq "rock/paper/scissors"
    end
  end
end