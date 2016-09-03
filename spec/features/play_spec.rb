require 'spec_helper'

feature 'play game' do
  scenario 'see weapon options on page' do
    sign_in
    expect(page).to have_button 'Rock'
    expect(page).to have_button 'Paper'
    expect(page).to have_button 'Scissors'
  end

  scenario 'choose weapon' do
    sign_in
    click_button 'Rock'
    expect(page).to have_content 'You chose Rock...'
  end

end
