require 'spec_helper'

feature 'Rock' do

  before do
    visit '/'
    fill_in('player1_name', with: 'A')
    click_button('Submit')
  end
  before do
    visit '/play'
    click_button('Rock')
  end

  scenario 'picking rock' do
    expect(page).to have_content('You picked Rock')
  end

end
