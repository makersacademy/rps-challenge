require 'spec_helper'

feature 'results of the Game' do
  scenario 'see the results' do

    sign_in
    click_button 'Rock'


    expect(page).to have_content("Draw!")
  end
end
