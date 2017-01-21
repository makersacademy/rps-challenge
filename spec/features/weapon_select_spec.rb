require 'spec_helper'

feature 'select attack' do
  scenario 'player can select rock' do
    sign_in_and_play
    click_button('Rock')
    expect(page).to have_content 'Mephistopheles selected the Rock'
  end
end
