feature 'names' do
  scenario 'submitting names' do
    visit('/')
    fill_in :player1, with: 'Mario'
    fill_in :player2, with: 'Luigi'
    click_button 'Submit'
    expect(page).to have_content 'Mario vs. Luigi'
  end
end
