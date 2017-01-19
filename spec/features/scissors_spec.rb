require 'spec_helper'

feature 'Scissors' do

  before do
    visit '/'
    fill_in('player1_name', with: 'A')
    click_button('Submit')
  end
  before do
    visit '/play'
    click_button('Scissors')
  end

  scenario 'picking scissors' do
    expect(page).to have_content('You picked Scissors')
  end

end
