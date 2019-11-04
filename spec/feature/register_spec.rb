require "./app.rb"

# As a marketeer
# So that I can see my name in lights
# I would like to register my name before playing an online game
feature "register name" do
  scenario "register and see my name" do
    visit "/"
    fill_in "name", with: "Maksim"
    click_button "Submit"
    expect(page).to have_content "Maksim vs Computer"
  end
end
