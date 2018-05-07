describe Player do

  let(:player) { described_class.new("Charlene") }

  describe "#initialize" do

    it 'receives name as attribute' do
      expect(player.name).to eq "Charlene"
    end

  end

end
