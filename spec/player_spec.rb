require 'player'

describe Player do
  subject { Player.new("Scooby Doo") }
  context '#move' do
    it 'stores the move to the moves array' do
      subject.move('rock')
      expect(subject.moves).to eq ['rock']
    end
  end
end
