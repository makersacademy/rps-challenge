require 'spec_helper'

# As a marketeer
# So that I can see my name in lights
# I would like to register my name before playing an online game

feature 'register a name' do
    scenario 'register and then see my name' do
        visit '/'
        fill_in 'name', with: 'JP'
        click_button 'Submit'
        expect(page).to have_content('JP')
    end
end