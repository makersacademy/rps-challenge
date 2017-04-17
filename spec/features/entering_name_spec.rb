require 'spec_helper.rb'

feature 'Enter names' do
  scenario 'submitting name' do
    visit ('/')
    fill_in :name, with: 'Ivan'
    click_button('Submit')
    expect(page).to have_content 'Ivan - choose Rock, Paper, or Scissors'
  end
end
