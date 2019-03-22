
feature 'Enter names' do
  scenario 'submitting names' do
    visit('/')
    fill_in :player_1_name, with: 'Dave'
    click_button 'Go Go Go!'
    expect(page).to have_content 'Dave'
  end
end
