require 'player'

describe Player do
  let(:taran) { Player.new("Taran") }
  it 'responds to a name' do
    expect(taran).respond_to?(:name)
  end
  it 'responds to a RPS selection' do
    expect(taran).respond_to?(:selection)
  end
  describe 'update_selection' do
    it "updates the player's RPS selection" do
      taran.update_selection("Paper")
      expect(taran.selection).to eq("Paper")
    end
  end
end
