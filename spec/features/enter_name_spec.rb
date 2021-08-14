feature 'enter name' do
  scenario 'allows player to enter name' do
    visit('/')
    fill_in :player, with: 'Gandalf'
    click_button 'play'

    # save_and_open_page

    # expect(page).to have_content 'Hi Gandalf! Please make a move'
  end
end