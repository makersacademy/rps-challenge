require './lib/game'
require './lib/player'


describe Game do

let(:player1) { double(:player1, name: "Unknown1", choice: nil) }
let(:player2) { double(:player2, name: "Unknown2", choice: nil) }

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
      expect(subject.set_player player1).to eq player1
    end
  end

  describe '#play' do

    it'should raise an error if not player was created' do
      element1 = :paper
      element2 = :rock
      expect{subject.play element1, element2}.to raise_error 'You need to set two players to play this game'
    end

    it'should return true if the player\'s choice is beating the computer' do
      game = Game.new
      game.set_player player1
      game.set_player player2
      allow(player1).to receive(:chooses).and_return(:paper)
      allow(player2).to receive(:chooses).and_return(:rock)
      expect(game.play :paper, :rock).to eq "won"
    end

  end

end