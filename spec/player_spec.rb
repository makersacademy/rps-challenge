require 'player'

describe Player do
  subject(:player) { Player.new('Dave')}
  subject(:computer_player) { Player.new }
  let(:generate_rps) { double :generate_rps }

  describe '#name' do
      it "returns the player's name" do
        expect(player.name).to eq 'Dave'
      end
      it "returns the computer's name" do
        expect(computer_player.name).to eq 'Deep Blue'
      end
  end

  describe '#weapon' do
    it "sets the user's weapon given the UI selection" do
      player.choose_weapon('Rock')
      expect(player.weapon).to eq 'Rock'
    end

    it "auto-generates the computer's weapon" do
      allow(subject).to receive(:generate_rps).and_return('Rock')
      computer_player.choose_weapon
      expect(computer_player.weapon).to eq 'Rock'
    end
  end

end
