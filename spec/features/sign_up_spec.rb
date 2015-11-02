feature "Registering username" do
  scenario "Signing up to play the game" do
    sign_up_and_play
    expect(page).to have_content('Alaan vs Machine')
  end
end
