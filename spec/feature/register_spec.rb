require 'spec_helper.rb'

feature "register my name" do
  scenario "input and view my name" do
    visit "/"
    fill_in "name", with: "Liam"
    click_button "submit"
    expect(page).to have_content "Liam"
  end
end