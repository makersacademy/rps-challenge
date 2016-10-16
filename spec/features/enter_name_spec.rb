require 'spec_helper'

feature 'Enter Name' do
  scenario 'submit player name' do
    sign_in_and_play
    expect(page).to have_content 'Welcome Master Romshambollah... This is Kitty, you ready to dance?'
  end

end
