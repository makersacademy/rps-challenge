require 'spec_helper'

feature "Register Names" do

  scenario "User enters name" do
    visit('/')
    expect(page).to have_content("Enter Name")
  end

end




# fill_in('Enter Name', with: 'Jenna')
# click_button "Register"
