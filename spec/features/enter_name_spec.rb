feature 'Enter name' do
  scenario 'submitting name' do
    visit '/'
    fill_in :player_1_name, with: 'Nayr'
    click_button 'Submit'
    expect(page).to have_content 'Player 1: Nayr'
  end
end
