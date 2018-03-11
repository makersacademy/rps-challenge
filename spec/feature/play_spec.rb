require 'spec_helper'



feature 'playning a game' do
  before do
    visit '/'
    fill_in :name, with: 'Giacomo'
    click_button 'Submit'
  end
  scenario ' see the shepe options' do
    expect(page).to have_content 'Rock'
    expect(page).to have_content 'Paper'
    expect(page).to have_content 'Scissors'
  end
end
