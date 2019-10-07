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
      allow_any_instance_of(Array).to receive(:sample).and_return("Rock")

      expect(subject.random_choice).to eq("Rock")
    end
  end

  describe '#winner' do
    it "returns player as winner if player chooses 'Rock' and computer chooses 'Scissors'" do
      allow(player).to receive(:choice).and_return("Rock")
      allow(computer).to receive(:choice).and_return("Scissors")

      expect(subject.winner).to eq(player)
    end

    it "returns player as winner if player chooses 'Scissors' and computer chooses 'Paper'" do
      allow(player).to receive(:choice).and_return("Scissors")
      allow(computer).to receive(:choice).and_return("Paper")

      expect(subject.winner).to eq(player)
    end

    it "returns player as winner if player chooses 'Paper' and computer chooses 'Rock'" do
      allow(player).to receive(:choice).and_return("Paper")
      allow(computer).to receive(:choice).and_return("Rock")

      expect(subject.winner).to eq(player)
    end

    it "returns computer as winner if computer chooses 'Paper' and player chooses 'Rock'" do
      allow(computer).to receive(:choice).and_return("Paper")
      allow(player).to receive(:choice).and_return("Rock")

      expect(subject.winner).to eq(computer)
    end

    it "returns computer as winner if computer chooses 'Scissors' and player chooses 'Paper'" do
      allow(computer).to receive(:choice).and_return("Scissors")
      allow(player).to receive(:choice).and_return("Paper")

      expect(subject.winner).to eq(computer)
    end

    it "returns computer as winner if computer chooses 'Rock' and player chooses 'Scissors'" do
      allow(computer).to receive(:choice).and_return("Rock")
      allow(player).to receive(:choice).and_return("Scissors")

      expect(subject.winner).to eq(computer)
    end

    it "returns nil if computer and player choose the same" do
      allow(computer).to receive(:choice).and_return("Rock")
      allow(player).to receive(:choice).and_return("Rock")

      expect(subject.winner).to eq(nil)
    end
  end
end
