require 'spec_helper'

feature 'Enter Name' do
  scenario "player enters name" do
    sign_in
    expect(page).to have_content "What will it be, Archer?"
  end
end
