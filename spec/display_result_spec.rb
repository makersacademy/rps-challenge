describe DisplayResult do

  describe '#winner_name' do
    context "when the winner is the player" do
      subject { described_class.new(:player, 'Cristina') }
      it "displays the player's name" do
        expect(subject.winner_name).to eq 'Cristina'
      end
    end

    context "when the winner is the computer" do
      subject { described_class.new(:computer, 'Cristina') }
      it "displays the computer's name" do
        expect(subject.winner_name).to eq 'Computer'
      end
    end

    context "when it's a draw" do
      subject { described_class.new(:draw, 'Cristina') }
      it "displays that there is no winner" do
        expect(subject.winner_name).to eq "None. It's a draw"
      end
    end

  end
end
