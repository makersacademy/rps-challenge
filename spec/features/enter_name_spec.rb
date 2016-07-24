feature "Enter name" do
  scenario "user can enter and view their name" do
    sign_in_and_play
    expect(page).to have_content "Welcome Richard"
  end
end
