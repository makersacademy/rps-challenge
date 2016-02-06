require 'spec_helper'
require 'web_helper'

feature 'play game page' do
  scenario 'has a game title' do
    sign_in
    expect(page).to have_content "Harry vs Computer"
  end

  xscenario 'has the 3 relevant action buttons' do
    sign_in
    expect(page).to have_buttom 'Rock'
    expect(page).to have_buttom 'Paper'
    expect(page).to have_buttom 'Scissors'
  end
end
