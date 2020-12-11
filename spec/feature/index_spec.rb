require "spec_helper"
feature "index" do
  scenario "player enter name" do
    visit "/"
    fill_in :name, with: "Javi"
    click_button "Play"
    expect(page).to have_content "Javi"
  end
end
