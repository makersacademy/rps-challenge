require 'spec_helper'

feature "Selecting a weapon" do
  scenario "Choosing a weapon from the list" do
    sign_in_and_play
    choose_weapon_and_fight
    expect(Game.instance.player_weapon).to eq(:rock)
  end
end
