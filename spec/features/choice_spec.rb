require 'spec_helper'

feature 'choosing weapon' do
  scenario 'saves choice' do
    sign_in_and_play
    click_button 'scissors'
    expect(page).to have_content 'You chose scissors'
  end
end

feature 'computer choice' do
  scenario 'gives a choice for computer' do
    sign_in_and_play
    click_button 'scissors'
    expect(page).to have_content 'HAL chose'
  end
end
