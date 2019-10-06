feature "Enter name" do

  scenario "Player enters their name to start game" do
    sign_in
    expect(page).to have_content "Melvin"
  end

end
