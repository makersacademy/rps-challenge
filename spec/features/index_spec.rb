require 'spec_helper'

feature 'One Player' do
  scenario "player enters name" do
    one_player_sign_in
    expect(page).to have_content "What will it be, Rick?"
  end
end
feature 'Two Player' do
  scenario "players enter names" do
    two_player_sign_in
    expect(page).to have_content "What will it be, Rick? (Morty, you should look away)"
  end
end
