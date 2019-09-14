feature 'Enter name' do
  scenario 'submitting name' do
    visit('/')
    fill_in :player_name, with: 'Sayem'
    click_button 'Submit'
    expect(page).to have_content 'Sayem, lets play Rock, Paper, Scissors!'
  end
end
