require 'spec_helper'

feature 'enter name of player(s)' do
  scenario 'player enters their name and is displayed on the next page' do
    sign_in
    expect(page).to have_content "Welcome, Leeroy"
  end
  scenario 'player enters their name and is displayed on the next page' do
    sign_in
    expect(page).to have_content "You are playing against Royston"
  end
end
