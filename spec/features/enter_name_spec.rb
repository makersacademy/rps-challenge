require 'spec_helper'

feature "register a name" do
  scenario "can enter and see name" do
    visit '/'
    fill_in 'name', with: 'Prashant'
    click_button 'Submit'
    expect(page).to have_content("Prashant")
  end
end
