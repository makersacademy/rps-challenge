require 'spec_helper'

feature 'drawing game' do

  scenario 'draw' do
    draw
    click_button 'PLAY'
    expect(page).to have_content('draw')
  end
end
