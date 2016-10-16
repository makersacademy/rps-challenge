require 'spec_helper'

feature 'computer takes turn' do

  scenario 'generates computer choice' do
     sign_in_and_play
     click_button 'Rock'
     expect(page).to have_content "Computer chose"
   end

 end
