require 'spec_helper'

feature 'Opponent selects a weapon' do

  scenario 'Returns evidence of opponent choosing a weapon' do
    sign_in_and_play
    click_button('Rock')
    expect(page).to have_content "Opponent selected the"
  end
end
