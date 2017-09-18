require 'player'
describe Player do
  describe "#name" do
    it 'return player name' do
      player1 = Player.new('tom')
      expect(player1.name).to eq 'tom'
    end
    context 'no name submitted' do
      it '' do
      expect { Player.new() }.to raise_error("No name submit")
    end
      # expect { subject.add_to_order(item) }.to raise_error(err_msg)
    end
  end
  describe "#select" do
    it 'have method weapon' do
      player1 = Player.new('tom')
      expect(player1).to respond_to(:weapon=).with(1).argument
    end
    context "No weapon assigned" do
      it "return nil" do
        player1 = Player.new('tom')
        expect(player1.weapon).to eq nil
      end
    end
    it 'return weapons' do
      player1 = Player.new('tom')
      player1.weapon = 'rock'
      expect(player1.weapon).to eq 'rock'
    end
  end
  describe '#random' do
    it 'return weapon' do
      player1 = Player.new('tom')
      items = ['rock', 'paper', 'scissors']
      player1.random(items)
      expect(items).to include(player1.weapon)
    end
  end
end
