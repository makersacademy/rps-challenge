feature 'enter names' do
  scenario 'submit names' do
    fill_in :player_1_name, with: 'Evita'
    click_button 'Continue'
    expect(page).to have_content('Welcome Evita!')
  end
end