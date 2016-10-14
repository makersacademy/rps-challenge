require 'spec_helper'
require_relative 'webhelpers'

feature 'user should see available choices' do
  scenario 'user should see rock choice' do
    sign_in_and_play
    expect(page).to have_content("Rock")
  end

  scenario 'user can select the "Rock" option' do
    sign_in_and_play
    click_button('Rock')
    expect(page).to have_content"You selected rock"
  end
end
