feature "Entering player's name" do
  scenario "should allow the user to enter his name and see a confirmation message" do
    visit_and_enter_name
    expect(page).to have_content "Welcome Andrea, let's start a game!"
  end
end
