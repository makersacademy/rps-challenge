require 'spec_helper'

feature 'Game Page' do
  before :each do
    visit '/'
    fill_in "name", with: "Andy"
    click_on 'New Game'
  end

  scenario "has radio buttons to select a weapon" do
    expect(page).to have_field "weapon"
  end

  scenario "Weapons options match AVAILABLE_WEAPONS constant's contents" do
    # Couldn't work out how to stub the constant
    RandomWeaponGenerator::AVAILABLE_WEAPONS.each do |weapon|
      expect(page).to have_field("weapon", with: weapon.to_s)
    end
  end

  scenario "has 'GO!' button" do
    expect(page).to have_button "GO!"
  end

  scenario "does NOT have 'YOU WON!'" do
    expect(page).to_not have_content "YOU WON!"
  end

  context "if user has selected a weapon and clicked 'GO!'" do
    def choose_rock_and_go
      choose 'rock'
      click_on 'GO!'
    end

    scenario "user is informed of opponent's choice" do
      allow_any_instance_of(Game).to receive(:random_weapon).and_return :paper
      choose_rock_and_go
      expect(page).to have_content "Opponent chose paper..."
    end

    scenario 'user is told they have won if they win the game' do
      allow_any_instance_of(Game).to receive(:play).with(:rock).and_return :win
      choose_rock_and_go
      expect(page).to have_content "YOU WON!"
    end

    scenario 'user is told they have lost if they lose the game' do
      allow_any_instance_of(Game).to receive(:play).with(:rock).and_return :loss
      choose_rock_and_go
      expect(page).to have_content "YOU LOST!"
    end

    scenario 'user is told they have drawn if they draw the game' do
      allow_any_instance_of(Game).to receive(:play).with(:rock).and_return :draw
      choose_rock_and_go
      expect(page).to have_content "Draw! Try again!"
    end
  end

end