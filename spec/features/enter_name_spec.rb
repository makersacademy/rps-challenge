# user can enter name
feature "Enter name" do
  scenario "User can enter name" do
    sign_in_and_play
    expect(page).to have_content "Welcome Henry!"
  end
end
