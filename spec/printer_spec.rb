describe Printer do
  describe "#new" do
    context "when player one wins" do
      it "returns congratulations" do
        expect(subject.print_result('Win', 'Adam', 'Peter')).to eq "Congratulations Adam, you won! Better luck next time Peter"
      end
    end
    context "when player draws" do
      it "returns draw message" do
        expect(subject.print_result('Draw', 'Adam', 'Peter')).to eq "It's a draw!"
      end
    end
    context "when player looses" do
      it "returns comiserations" do
        expect(subject.print_result('Loose', "Peter", "Adam")).to eq "Congratulations Adam, you won! Better luck next time Peter"
      end
    end
  end
end
