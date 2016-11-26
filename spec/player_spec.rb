require 'player'

describe Player do
  subject(:mike) { Player.new('Mike') }

  describe '#name' do
    it "returns the name" do
      expect(mike.name).to eq 'Mike'
    end
  end

end
