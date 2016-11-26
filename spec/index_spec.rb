require 'spec_helper'

feature Rps do

  scenario 'should allow a player to enter thier name' do
    visit'/'
    fill_in('name', with: 'MAMA')
    click_button('Submit')
    expect(page).to have_content("Welcome MAMA")
  end

end
