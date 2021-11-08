require 'spec_helper'

feature 'Player can enter his name' do 
  scenario 'Player name displayed in lights' do 
    visit '/'
    fill_in 'name', with: 'Mohammed'
    click_button 'Submit'
    expect(page).to have_content 'Mohammed'
  end
end 