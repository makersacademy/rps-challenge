require 'player'

describe Player do
  subject(:player) { described_class.new("Shelly") }

  describe '#name' do
    it "returns the player's name" do
      expect(player.name).to eq "Shelly"
    end
  end

  describe '#choose' do
    it "stores the player's choice" do
      player.choose(2)
      expect(player.choice).to eq 2
    end
  end

  describe '#choose_random' do
    it "makes a random choice in a specified range" do
      expect(Kernel).to receive(:rand).with(4)
      player.choose_random(5)
    end

    it 'stores the choice' do
      allow(Kernel).to receive(:rand).and_return(3)
      player.choose_random(5)
      expect(player.choice).to eq 3
    end
  end

  describe '#choice_human' do
    context 'if choice == 0' do
      it "returns 'rock'" do
        player.choose(0)
        expect(player.choice_human).to eq 'rock'
      end
    end

    context 'if choice == 1' do
      it "returns 'paper'" do
        player.choose(1)
        expect(player.choice_human).to eq 'paper'
      end
    end

    context 'if choice == 2' do
      it "returns 'scissors'" do
        player.choose(2)
        expect(player.choice_human).to eq 'scissors'
      end
    end
  end

  describe '#computer?' do
    it 'returns false by default' do
      expect(player).not_to be_computer
    end
  end

  describe '#set_computer' do
    it 'sets #computer? to true' do
      player.set_computer
      expect(player).to be_computer
    end
  end
end
