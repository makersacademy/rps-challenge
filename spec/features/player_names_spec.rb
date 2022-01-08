feature 'Player names' do
  scenario 'players can input their names' do
    fill_name_and_submit
    expect(page).to have_content('Pabllo, pick your move')
  end
end
