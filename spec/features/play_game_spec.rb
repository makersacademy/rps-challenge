require 'spec_helper'

feature 'play game' do

  scenario 'buttons bring back values' do
    sign_in_and_play
    click_button('Rock')
    expect(page).to have_content ('You picked Rock')
  end
end
