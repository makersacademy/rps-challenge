feature 'Enter names' do
  scenario 'submitting names' do
    visit('/')
    fill_in :player_name, with: 'Otis'
    click_button 'Submit'
    expect(page).to have_content 'Otis vs. Computer'
  end
end
