require 'player'

describe Player do
  subject(:player) { described_class.new('Kenji') }

  it {is_expected.to respond_to :name}

    describe '.choose' do
      it "should choose one weapon" do
        expect(player.choose(:rock)).to eq :rock
      end
    end

 end
