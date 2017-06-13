
feature 'Name entry' do
  scenario 'runs app, enters name' do
    visit('/')
    expect(page).to have_field 'player_name'
    expect(page).to have_button 'Submit'
  end

  scenario 'runs app, enters name, name is displayed on game page' do
    sign_in_and_play
    expect(page).to have_content "Hi Marketeer!"
  end
end
