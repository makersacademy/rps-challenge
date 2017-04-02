require 'rps_game'

  describe RPSGame do
  subject(:rps) {described_class.new}
  describe '#initialize' do
    it 'has an an array with correct number of components in it' do
      expect(rps.game_choices.length).to eq RPSGame::Gamesize
    end

  end

end
