require "spec_helper"

feature "Starting a new game" do

  scenario "I am asked to enter my name" do
    visit "/"
    expect(page).to have_content "Enter name"
  end

  scenario "I see my name " do
    visit "/"
    fill_in("name", with: "Lewis")
    click_button "start game"
    expect(page).to have_content "Player: Lewis"
  end

  scenario "I see anonymous if I don't put in name " do
    visit "/"
    click_button "start game"
    expect(page).to have_content "Player: Anonymous"
  end

  scenario "I see a choice of hand" do
    visit "/"
    click_button "start game"
    expect(page).to have_content "Choose your hand"
  end

  scenario "I select my choice of hand" do
    visit "/"
    click_button "start game"
    expect(page).to have_selector("input[type=submit][name='hand']")
  end


  scenario "I see result of my hand" do
    visit "/"
    click_button "start game"
    click_button "paper"
    expect(page).to have_content "Result:"
  end

end