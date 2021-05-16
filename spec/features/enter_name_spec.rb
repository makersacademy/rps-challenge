feature 'Enter names' do
  scenario 'submitting names' do
    visit('/')
    fill_in :player_name, with: 'Maria'
    click_button 'Submit'
    save_and_open_page #will save the web page and open the browser tyo display it
    expect(page).to have_content 'Maria'
  end
end