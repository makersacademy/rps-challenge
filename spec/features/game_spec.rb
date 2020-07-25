require 'spec_helper'

feature 'visit webpage' do
    scenario 'button leads to form page' do
        visit('/')
        within('form') do
        click_button "READY"
        expect(page).to have_content("Avatar Name:")
       end
    end

    scenario 'enter username' do
      visit('/form')
      within('form') do
      fill_in :player_1_name, with: 'Xozof'
    end
    click_button "Submit"
  end

#   feature 'homepage' do

end