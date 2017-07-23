require 'game'

describe Game do
  # subject(:game) { described_class.new(player_1_weapon, computer_choice)}
  # let(:player_1_weapon) { double(player_1_weapon) }
  # let(:computer_choice) { double(computer_choice) }

  describe '/win' do
    it 'displays win if player has rock and cpu has scissors' do
      # player_1_weapon = "Rock"
      # computer_choice = "Scissors"
      rock = Game.new("Rock", "Scissors")
      expect(rock.result). to eq(:win)
    end

    it 'displays win if player has paper and cpu has rock' do
      rock = Game.new("Paper", "Rock")
      expect(rock.result). to eq(:win)
    end

    it 'displays win if player has scissors and cpu has paper' do
      rock = Game.new("Scissors", "Paper")
      expect(rock.result). to eq(:win)
    end
  end

  describe '/lose' do
    it 'displays lose if player has scissors and cpu has rock' do
      rock = Game.new("Scissors", "Rock")
      expect(rock.result). to eq(:lose)
    end

    it 'displays lose if player has rock and cpu has paper' do
      rock = Game.new("Rock", "Paper")
      expect(rock.result). to eq(:lose)
    end

    it 'displays lose if player has paper and cpu has scissors' do
      rock = Game.new("Paper", "Scissors")
      expect(rock.result). to eq(:lose)
    end
  end

  describe '/draw' do
    it 'displays draw if player has rock and cpu has rock' do
      rock = Game.new("Rock", "Rock")
      expect(rock.result). to eq(:draw)
    end

    it 'displays draw if player has scissors and cpu has scissors' do
      rock = Game.new("Scissors", "Scissors")
      expect(rock.result). to eq(:draw)
    end

    it 'displays draw if player has paper and cpu has paper' do
      rock = Game.new("Paper", "Paper")
      expect(rock.result). to eq(:draw)
    end
  end
end
