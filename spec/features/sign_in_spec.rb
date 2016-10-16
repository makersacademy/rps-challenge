require 'spec_helper'

feature 'enter name of players' do
  scenario 'player enters their name and is displayed on the next page' do
    sign_in_2p
    expect(page).to have_content "Welcome, Leeroy"
  end
  scenario 'player enters their name and is displayed on the next page' do
    sign_in_2p
    expect(page).to have_content "You are playing against Royston"
  end
end

feature 'sign in for a signle plater game' do
  scenario 'only one name is entered' do
    sign_in_1p
      expect(page).to have_content "You are playing against the_computer"
  end
end
