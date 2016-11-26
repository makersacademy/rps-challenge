require 'spec_helper'

feature Player do

  before(:each) do
    sign_in_and_play
  end
  
  subject(:player) { Player.new('Player') }
  subject(:computer) { Player.new('Computer') }

  scenario 'Stores player\'s name and returns it' do
    expect(player.name).to eq 'Player'
  end

end
