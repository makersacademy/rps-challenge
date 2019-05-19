require 'game'

describe Game do
  let(:player) { double :player }
  let(:computer) { double :computer }
  let(:subject) { Game.new(player, computer) }

  describe '#player' do
    it 'returns player' do
      expect(subject.player).to eq(player)
    end
  end

  describe '#computer' do
    it 'returns computer' do
      expect(subject.computer).to eq(computer)
    end
  end

  describe '#random_choice' do
    it 'returns random choice' do
      allow_any_instance_of(Array).to receive(:sample).and_return("rock")

      expect(subject.random_choice).to eq("rock")
    end
  end

  describe '#winner' do
    it "returns player as winner if player choice's 'Rock' and computer's choice 'Scissors'" do
      allow(player).to receive(:choice).and_return("Rock")
      allow(computer).to receive(:choice).and_return("Scissors")

      expect(subject.winner).to eq(player)
    end

    it "returns player as winner if player's choice 'Scissors' and computer's choice 'Paper'" do
      allow(player).to receive(:choice).and_return("Scissors")
      allow(computer).to receive(:choice).and_return("Paper")

      expect(subject.winner).to eq(player)
    end

    it "returns player as winner if player's choice 'Paper' and computer's choice 'Rock'" do
      allow(player).to receive(:choice).and_return("Paper")
      allow(computer).to receive(:choice).and_return("Rock")

      expect(subject.winner).to eq(player)
    end

    it "returns computer as winner if computer's choice 'Paper' and player's choice 'Rock'" do
      allow(computer).to receive(:choice).and_return("Paper")
      allow(player).to receive(:choice).and_return("Rock")

      expect(subject.winner).to eq(computer)
    end

    it "returns computer as winner if computer's choice 'Scissors' and player's choice 'Paper'" do
      allow(computer).to receive(:choice).and_return("Scissors")
      allow(player).to receive(:choice).and_return("Paper")

      expect(subject.winner).to eq(computer)
    end

    it "returns computer as winner if computer's choice 'Rock' and player's choice 'Scissors'" do
      allow(computer).to receive(:choice).and_return("Rock")
      allow(player).to receive(:choice).and_return("Scissors")

      expect(subject.winner).to eq(computer)
    end

    it "returns draw if computer's and player's choice the same" do
      allow(computer).to receive(:choice).and_return("Rock")
      allow(player).to receive(:choice).and_return("Rock")

      expect(subject.winner).to eq(nil)
    end
  end
end
