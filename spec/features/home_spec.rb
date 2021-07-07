require 'spec_helper'

feature 'visit webpage' do
    scenario 'button leads to form page' do
        visit('/')
        within('form') do
        click_button "READY"
        expect(page).to have_content("Avatar Name:")
       end
    end

 
#   feature 'homepage' do

end