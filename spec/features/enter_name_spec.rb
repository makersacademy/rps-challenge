feature "Enter name" do

  scenario "User enters their name to start game" do
    sign_in
    expect(page).to have_content "Melvin"
  end

end
