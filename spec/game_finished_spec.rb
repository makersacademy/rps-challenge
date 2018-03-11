require 'game_finished'
describe 'Game_finished' do

  describe '#check_finished' do
    context 'when the length of results is 5' do
      it "retuens end" do
        results = [:won, :lost, :lost, :draw, :draw]
        expect(Game_finished.new.check_finished(results)).to eq :end
      end
    end
  end

end
