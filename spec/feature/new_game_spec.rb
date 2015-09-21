require 'spec_helper'

feature 'it tells you who is playing' do
  scenario 'user vs computer' do
    visit '/'
    fill_in 'name', with: 'Bob'
    click_button 'Submit'
    visit '/new_game'
    expect(page).to have_content("Bob Vs. Computer")
  end

end
