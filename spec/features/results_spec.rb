require 'spec_helper'

feature 'results of the Game' do
  scenario 'see the results' do

    sign_in
    click_button 'Rock'


    expect(page).to have_content("Draw!")
  end

  scenario 'allows player to try again' do
    sign_in
    click_button 'Rock'
    click_button 'Try again'

    expect(page).to have_content("Hello Prashant!")

  end

end
