feature "player name entry" do
  scenario "player name displayed" do
    sign_in_and_play
    expect(page).to have_content('Pick your move, Chuck')
  end
end
