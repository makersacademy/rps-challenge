feature "player can register name for online game" do
  scenario "user can enter name" do
    register_to_play
    expect(page).to have_content "Welcome Pookie"
  end
end
