require 'spec_helper'

feature 'Player name' do
  scenario "Player can enter their name" do
    sign_in
    expect(page).to have_text("Yuri")
  end
end
