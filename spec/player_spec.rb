require 'spec_helper'
require './lib/player.rb'

describe Player do
  
  subject(:player) {described_class.new('Paul')}
  
  context '#name' do
    it 'returns name of the player' do
      expect(player.name).to eq('Paul')
    end
  end

  context '#set_choice' do
    it 'sets the choice attribute of the player' do
      player.set_choice('ROCK')
      expect(player.choice).to eq('ROCK')
    end
  end
end