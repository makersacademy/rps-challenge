require 'spec_helper'

feature 'Enter player name' do
  scenario 'Player one enters name ' do
    enter_name_click_submit
    expect(page).to have_content 'Welcome Michael!'
  end
end
