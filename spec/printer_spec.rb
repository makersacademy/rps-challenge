describe Printer do
  describe "#print_result" do
    let(:printer) { Printer.new('Adam') }
    context "when player wins" do
      it "returns congratulations" do
        expect(printer.print_result('Loose')).to eq "Unlucky Adam, looks like you lost!"
      end
    end
    context "when player draws" do
      it "returns draw message" do
        expect(printer.print_result('Draw')).to eq "It's a draw!"
      end
    end
    context "when player looses" do
      it "returns comiserations" do
        expect(printer.print_result('Win')).to eq "Congratulations Adam, you won!"
      end
    end
  end
end
