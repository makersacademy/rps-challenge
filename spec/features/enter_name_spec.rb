feature "Player name" do
  scenario "Enter a players name" do
    enter_name_and_play
    expect(page).to have_content('Murtz vs. computer')
  end
end
