require 'spec_helper'

feature 'result_page' do
  scenario 'returns user choice' do
    sign_in_and_play
    click_button 'Submit'
    expect(page).to have_text 'Rock'
  end
end
