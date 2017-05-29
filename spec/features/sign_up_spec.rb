feature "sign up" do
  scenario "user can register before playing" do
    sign_in_and_play
    expect(page).to have_content("Arnold vs. Computer!")
  end
end
