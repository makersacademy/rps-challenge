require './spec/spec_helper'

feature 'Playing RPS' do
  before do
    visit '/'
    fill_in 'name', with: 'George'
    click_button 'Submit'
  end
  scenario 'see the RPS options' do
    expect(page).to have_content 'Rock'
  end
end