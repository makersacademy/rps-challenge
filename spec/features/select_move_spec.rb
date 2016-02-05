require 'spec_helper'

feature 'Select move' do
  scenario 'player selects rock' do
    enter_name_click_submit
    click_button 'ROCK'
    expect(page).to have_content 'You chose ROCK!'
  end
end
