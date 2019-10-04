feature 'Enter names' do
  scenario 'sumbitting names' do
    visit('/')
    fill_in :player_1_name, with: 'Eoin'
    click_button 'Submit'
    expect(page).to have_content 'Welcome to the battle of your life, Eoin!'
  end
end
