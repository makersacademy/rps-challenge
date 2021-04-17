feature "Enter player names" do
  scenario " Players can enter their names" do
    visit('/')
    fill_in :player_1, with: 'matt'
    click_button 'Submit'

    expect(page).to have_content("Welcome Matt please choose a move")
  end
end