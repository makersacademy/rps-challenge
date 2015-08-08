require "spec_helper"

feature "Can register name" do
  scenario "takes input name and displays it on the next page" do
    visit "/"
    expect(page).to have_content "Please enter your name so you can start playing Rock, Paper, Scissors" 
    name = "Gon"
    fill_in "name", with: name
    click_button "continue"
    expect(page).to have_content "Welcome #{name}"
  end
  scenario "registers default name if none given" do
    visit "/"
    click_button "continue"
    expect(page).to have_content "Welcome Player"
  end
end