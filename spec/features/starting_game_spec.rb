require 'spec_helper'

feature 'Home Page' do
  before :each do
    visit '/'
  end

  context 'when on home page' do
    scenario "user sees a 'new game' button" do
      expect(page).to have_link "New Game"
    end
  end

  context "when user clicks 'new game' button" do
    scenario 'user is taken to game page' do
      click_on 'New Game'
      expect(current_path).to eq '/game_page'
    end
  end
end