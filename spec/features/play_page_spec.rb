require 'spec_helper'
require_relative 'web_helper'

feature 'play game page' do
  scenario 'has a game title' do
    sign_in
    expect(page).to have_content "Harry vs Computer"
  end

  scenario 'has the 3 relevant action buttons' do
    sign_in
    expect(page).to have_button 'Rock'
    expect(page).to have_button 'Paper'
    expect(page).to have_button 'Scissors'
  end
end
