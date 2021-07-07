require 'spec_helper'

feature 'Enter name' do
        scenario 'submit name on form to display name' do
        visit('/play')
        within('form') do
        fill_in :avatar_name, with: "Xozof"
        end
       click_button "Submit"
       expect(page).to have_content "Hi Xozof! Let's smash this game!" 
     end
end

