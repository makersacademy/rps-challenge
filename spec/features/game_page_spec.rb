require 'spec_helper'

feature 'Game Page' do
  before :each do
    visit '/game_page'
  end

  scenario "User sees radio buttons to select a weapon" do
    expect(page).to have_field "weapon"
  end

  scenario "Weapons options match AVAILABLE_WEAPONS constant's contents" do
    # Couldn't work out how to stub the constant

    RandomWeaponGenerator::AVAILABLE_WEAPONS.each do |weapon|
      expect(page).to have_field("weapon", with: weapon.to_s)
    end
  end
end