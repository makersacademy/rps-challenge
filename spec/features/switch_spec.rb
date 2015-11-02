require 'spec_helper'

feature 'Switching' do
  scenario 'switchs turns two players' do
    sign_in_multiplayer
    click_button('Paper')
    expect(page).to have_content "Ed's Go!"
  end
end