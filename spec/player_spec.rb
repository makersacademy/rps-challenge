require 'player'
describe Player do
  subject(:player) {Player.new("Eoin")}
  describe "#name" do

    it 'can return its name' do
      expect(player.name).to eq "Eoin"
    end
  end

  describe '#selction' do
    it 'excepts the selection' do
      expect(player.selection("Rock")).to eq ["Rock"]
    end
  end

  describe '#return_selection' do
    it 'retains the mostrecent selection of RPS' do
      player.selection("Rock")
      expect(player.return_selection).to eq "Rock"
    end
  end

end
