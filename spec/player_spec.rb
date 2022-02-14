require_relative './lib/player'

describe Player do
    subject {Class.new}

    describe '#register' do
      it 'allows player to register name in order to play the game and see name in lights'
      subject.register("Bill")
      expect(subject.register).to eq "Bill"
    end
end
