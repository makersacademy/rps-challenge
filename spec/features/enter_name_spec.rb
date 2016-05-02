feature 'Names' do
  scenario 'submitting names' do
    visit('/')
    fill_in :player_1_name, with: 'Jack'
    click_button 'Submit'
    expect(page).to have_content 'Jack'
  end
end
