require './spec/spec_helper'

feature 'Playing RPS' do
  before do
    visit '/'
    fill_in 'name', with: 'George'
    click_button 'Submit'
  end
  scenario 'see the RPS options' do
    expect(page).to have_content 'Rock'
    expect(page).to have_content 'Scissors'
    expect(page).to have_content 'Paper'
  end
  scenario 'making a choice' do
    click_button 'Rock'
    expect(page).to have_content 'Can you smell what the Rock is cooking?'
  end
end