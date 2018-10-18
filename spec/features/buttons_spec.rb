feature "button" do
  scenario "should have a 'rock' button" do
    enter_name_and_play
    expect(page).to have_selector("ROCK")
  end
end
