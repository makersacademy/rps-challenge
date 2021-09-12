require 'spec_helper'


feature 'register names' do 
    scenario "register and display player's name" do
        visit '/'
        fill_in 'name', with: 'Boris'
        click_button 'Submit'
        expect(page).to have_content 'Boris'
    end
end