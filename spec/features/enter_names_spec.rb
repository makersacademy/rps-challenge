feature 'Enter name' do
  scenario 'submitting name' do
    visit('/')
    fill_in :player_name, with: 'Marie'
    click_button 'Play'
    # save_and_open_page
    expect(page).to have_content 'Marie choose:'
  end
end