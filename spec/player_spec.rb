require 'player'

describe 'Player' do
  subject(:player) { Player.new("Sergio")}
  let(:machine) {Player.new("Computer")}

  context '#name' do
    it('returns the name') do
      expect(player.name).to eq "Sergio"
    end
  end

  context 'points' do
    it('on initialization, points are 0') do
      expect(player.points).to eq 0
    end

    it('after a win, points are increased by one') do
      player.increase_points
      expect(player.points).to eq 1
    end
  end

  context '#choice' do
    it('set value to :rock and reads it ') do
      expect(player.choice = :rock).to eq(:rock)
    end
  end

  context 'computer choice' do
    it('provides a random choice for computer classic mode') do
      allow(Kernel).to receive(:rand).and_return(0)
      expect(player.self_choice("classic")).to eq :scissors.to_s
    end

    it('provides a ramdom choice for computer spock mode') do
      allow(Kernel).to receive(:rand).and_return(4)
      expect(player.self_choice("spock")).to eq :spock.to_s
    end

    it('sets the attribute choice') do
      allow(Kernel).to receive(:rand).and_return(2)
      player.self_choice("classic")
      expect(player.choice).to eq :rock.to_s
    end
  end
end