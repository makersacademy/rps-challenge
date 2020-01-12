feature "entering name" do
  scenario "check user input == name" do
   sign_in_and_play
    expect(page).to have_content "Welcome David"
  end
end