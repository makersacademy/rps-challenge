require 'spec_helper'

feature 'Paper' do

  before do
    visit '/'
    fill_in('player1_name', with: 'A')
    click_button('Submit')
  end
  before do
    visit '/play'
    click_button('Paper')
  end

  scenario 'picking paper' do
    expect(page).to have_content('You picked Paper')
  end

end
