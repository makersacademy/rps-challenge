feature "Enter name" do
  scenario "allows the user to enter his name and see a confirmation message" do
    sign_in_and_play
    expect(page).to have_content "Welcome Andrea, let's start the game!"
  end
end
