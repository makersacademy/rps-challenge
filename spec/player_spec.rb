require 'player'

describe Player do
  subject(:fake_player) { double('player', name: "Fake Player") }

  subject(:player) { described_class.new(fake_player.name) }

  context '.initialize' do
    it 'on initialize it should store a name' do
      expect(player.name).to eq(fake_player.name)
    end

    it 'on initialize action should be nil' do
      expect(player.action).to be_nil
    end
  end

  context 'set action' do
    ['paper', 'rock', 'scissors'].each do |action|
      it "should be able to set action to #{action}" do
        player.action = "#{action}"
        expect(player.action).to eq("#{action}")
      end
    end
  end
end
