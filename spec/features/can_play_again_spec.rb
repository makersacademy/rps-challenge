require 'spec_helper'
require_relative 'web_helper'

feature 'play again' do
  scenario 'after playing one game it is possible to play another' do
    sign_in
    click_button 'Rock'
    click_button 'Play again'
    expect(page).to have_content "Harry vs Computer"
  end
end
