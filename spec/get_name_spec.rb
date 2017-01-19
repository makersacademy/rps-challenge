require 'spec_helper'

feature 'Enter names' do

  scenario 'submitting names' do
    visit '/'
    fill_in('player1_name', with: 'A')
    click_button('Submit')
    expect(page).to have_content('A vs Computer')
  end

end
