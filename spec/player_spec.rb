require 'player.rb'

  describe Player do

    it 'greets the player by name when player signs in' do
      expect(subject.name('Kyle')).to eq("Hi Kyle")
    end

    it 'lets the player choose a move regardless of case' do
      subject.make_move('ROCK')
      expect(subject.move).to eq("rock")
    end

    it 'will only let rock, paper or scissors be selected as a move' do
      expect(subject.make_move('Machete')).to eq("Not a recognised move")
    end


end


# player.name
# player.move
# computer.move
# game.result
