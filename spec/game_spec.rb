require 'game'
describe '#game' do
  subject(:rps) {Game.new("Paula", "Ogruk")}
  let(:paula) { double :paula }
  let(:ogruk) { double :ogruk }

  describe '#finish'do
    it 'expects a game to respond to #finish' do
      expect(rps).to respond_to(:finish)
    end
  end
end
