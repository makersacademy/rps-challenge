require 'player'

describe Player do
  subject(:naomi) { Player.new('Naomi') }


  describe '#name' do
    it 'returns the name' do
      expect(naomi.name).to eq('Naomi')
    end
  end

  describe '#pick' do
  it "can make a pick" do
  		naomi.picks = "Rock"
  		expect(naomi.picks).to eq("Rock")
  	end
  end

end
