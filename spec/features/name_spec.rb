feature "Welcome" do
  scenario "Enter name" do
    sign_in_and_play
    expect(page).to have_content "Let's play Asad!"
  end
end
