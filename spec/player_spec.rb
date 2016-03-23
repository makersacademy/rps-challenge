require 'player'
require 'spec_helper'

describe Player do
  subject(:player){described_class.new('adil')}


  describe '#initialization' do
    it 'should accept a name as parameter and save it' do
      expect(player.name).to eq 'adil'
    end
  end

  describe '#weapon' do
    it 'should save chosen weapon as choice' do
      player.weapon('rock')
      expect(player.choice).to eq :rock
    end
  end

  








end
