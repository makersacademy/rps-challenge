require 'spec_helper'
require 'player'

describe Player do
  let(:player_name) {"Andy"}
  subject(:player) { described_class.new(player_name) }
  context 'on initialize' do
    it 'should store the players name' do
      expect(player.name).to eq player_name
    end
    it 'should have a selection of nil' do
      expect(player.selection).to be_nil
    end
  end

  describe '#round_select' do
    it 'updates the @selection variable' do
      expect{player.round_select('Rock')}.to change{player.selection}.to('Rock')
    end
  end
end