describe Computer do

  let(:computer) {described_class.new}

  context "When initialized it" do

    it "Has a username" do
      expect(computer.name).to eq('Hal')
    end

  end








end
