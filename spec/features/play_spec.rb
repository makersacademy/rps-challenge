require 'spec_helper'

feature 'gameplay' do
  
  before do
    visit '/'
    fill_in 'name', with: 'Superman'
    click_button 'Submit'
  end

  scenario 'see the shape options' do
    
    expect(page).to have_button 'Rock'
    expect(page).to have_button 'Paper'
    expect(page).to have_button 'Scissors'

  end
end
