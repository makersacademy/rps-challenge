require 'player'

describe Player do

    let(:name){ "Suse" }
    let(:weapon){ "Rock" }
    subject(:player) { described_class.new(name, weapon) }

    describe 'name' do
      it "returns player's name" do
        expect(subject.name).to eq "Suse"
      end
    end

    describe 'weapon' do
      it 'sets a player\'s weapon to Rock' do
      expect(player.weapon).to eq "Rock"
      end
    end
end
