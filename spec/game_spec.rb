require './lib/game'
require './lib/player'


describe Game do

let(:player) { double(:player, name: "Unknown", choice: nil) }

describe '#beat' do
    it'returns an error if the user chooses an element outside of the rules\'s choices' do
      element1 = :abc
      element2 = :bcd
      expect{subject.beat :element1, :element2}.to raise_error 'No such element in the rules'

    end

    it 'compares two elements and returns true if the first one is wining' do
      expect(subject.beat :rock, :scissors).to eq "won"
      expect(subject.beat :rock, :rock).to eq "draw"
      expect(subject.beat :rock, :paper).to eq "lost"

      expect(subject.beat :paper, :rock).to eq "won"
      expect(subject.beat :paper, :paper).to eq "draw"
      expect(subject.beat :paper, :scissors).to eq "lost"

      expect(subject.beat :scissors, :paper).to eq "won"
      expect(subject.beat :scissors, :scissors).to eq "draw"
      expect(subject.beat :scissors, :rock).to eq "lost"
    end


  end

  describe '#set_player' do
    it'creates a new player' do
      expect(subject.set_player player).to eq player
    end
  end

  describe '#play' do

    it'should raise an error if not player was created' do
      element = :paper
      expect{subject.play element}.to raise_error 'You need to set a player to play this game'
    end

    it'should return true if the player\'s choice is beating the computer' do
      game = Game.new
      game.set_player player
      allow(player).to receive(:chooses).and_return(:paper)
      allow(game).to receive(:computer).and_return(:rock)
      expect(game.play :paper).to eq "won"
    end

  end

end