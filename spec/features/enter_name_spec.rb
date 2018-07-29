feature "Testing settable player name" do
  scenario "Player can enter his / her name and see it on-screen" do
    sign_in_and_play
    expect(page).to have_content('Marek vs. Computer')
  end
end
