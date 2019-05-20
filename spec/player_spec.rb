require_relative '../app.rb'
require 'player'

describe Player do
  describe 'select options' do
    scenario ' asks player to pick rock, paper or scissors' do
      let(:Rock) { double(:Rock) }
      expect(player_name.move('Rock')).to eq 'Rock'
    end
  end
end
