require 'computer'

describe Computer do

  let(:computer_1) { described_class.new }

  describe "#name" do
    context "computer should have a name attribute" do
      it "should return Computer" do
        expect(computer_1.name).to eq("Computer")
      end
    end
  end

end
