feature 'enter names' do
  scenario 'submitting names' do
    visit('/')
    fill_in :player_name, with: 'Leah'
    click_button 'Submit'

    save_and_open_page
    expect(page).to have_content 'Welcome to RPS Leah'
  end
end