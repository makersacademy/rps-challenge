require 'spec_helper'
feature 'signing in a name' do
  scenario 'sign in so i can see my name' do
    visit '/'
    fill_in 'name', with: 'Alex'
    click_button 'Submit'
    expect(page).to have_content "Alex"
  end
end
