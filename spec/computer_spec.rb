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

  describe "#choice" do
    context "when choice is called" do
      it "should return 'rock'" do
        allow_any_instance_of(Array).to receive(:sample).and_return(:rock)
        expect(computer_1.select).to eq(:rock)
      end
    end
  end

end
