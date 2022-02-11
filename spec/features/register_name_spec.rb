feature "Register name" do
  scenario "Expect marketeer to be able to register their name" do
    start_game

    expect(page).to have_content 'Player: Peter'
  end
end
