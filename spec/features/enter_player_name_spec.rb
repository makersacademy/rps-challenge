feature 'Enter the players name' do
  scenario 'Enter name' do
    visit('/')
    fill_in :player_1_name, with: "Jake"
    click_button 'Submit'

    # save_and_open_page

    expect(page).to have_content "Jake vs Computer"
  end
end