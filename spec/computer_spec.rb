require 'computer'

describe Computer do
  describe '#move' do
    let(:computer) { Computer.new("computer") }
    it 'chooses a move between 1 and the set number of weapons for the game' do
      allow(Game.current_game).to receive(:weapons).and_return(5)
      expect(computer.move).to be_between(1, 5)
    end
  end
end
