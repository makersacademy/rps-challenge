require 'spec_helper'

feature 'user log in' do
  scenario "user can put in and submit their name" do
    visit '/'
    expect(page).to have_content('name')
    expect(page).to have_content('Submit')
  end

  scenario "submit redirects to a play page" do
    visit '/'
    fill_in('name', with:'Luna')
    click_button('Submit')
    expect(page).to have_content("Hello, Luna!")
  end
end