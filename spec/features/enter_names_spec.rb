feature 'Enter Names' do
  scenario "sets the name of the player" do
    visit('/')
    fill_in :player_1_name, with: 'Luke'
    click_button 'Submit'
    expect(page).to have_content ('Hello Luke!')
  end
end
