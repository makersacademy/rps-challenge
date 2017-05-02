require 'game'
describe '#game' do
  subject(:rps) {Game.new("Paula", "Ogruk")}
  let(:paula) { double :paula }
  let(:ogruk) { double :ogruk }

  describe '#initialize' do
    it 'expects the default computer to be Ogruk' do
      expect(rps.computer).to eq "Ogruk"
    end

    it 'expects the player to be a new instance of Player' do
      expect(rps.player).to eq "Paula"
    end
  end

  describe '#finish'do
    it 'expects a game to respond to #finish' do
      expect(rps).to respond_to(:finish)
    end

    it 'expects a game to finish when player has five points' do
      allow(paula).to receive_messages(score: 5)
      expect(rps.finish).to be true
    end
  end
end
