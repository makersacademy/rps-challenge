require 'spec_helper'

feature 'Playing the game' do

  scenario 'user can choose an option' do
    visit '/challenge'
    expect(page).to have_content 'Choose Wisely'
  end

end