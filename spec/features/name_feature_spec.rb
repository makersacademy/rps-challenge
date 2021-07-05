feature "register name" do
  scenario "A player can register their name before playing" do
    sign_in
    expect(page).to have_content "Te llamas Spidey"
  end
end
