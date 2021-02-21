# frozen_string_literal: true

require 'player'

describe Player do
  let(:player_one) { Player.new('sandy') }
  it 'takes the player name as parameter' do
    expect(Player).to respond_to(:new).with(1)
  end

  describe '#name' do
    it 'knows its name' do
      expect(player_one.name).to eq 'sandy'
    end
  end

  describe '#choice' do
    it "sets and stores the player's choice" do
      player_one.receive_choice('Rock')
      expect(player_one.choice).to eq 'Rock'
    end
  end
end
