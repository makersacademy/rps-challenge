require 'spec_helper'

feature "adding player's name" do
  context "when players registers" do
    scenario "checks that player registers the name" do
      visit('/')
      fill_in :name, with: 'Antonio'
      click_button 'Submit'
      expect(page).to have_content 'Antonio vs. Computer'
    end
  end
end
