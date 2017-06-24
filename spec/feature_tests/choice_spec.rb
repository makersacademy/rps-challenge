feature "Player's choice" do
  scenario "choosing" do
    sign_in_and_play
    visit('/play')
    expect(page).to have_content('Scissors')
  end
end
