feature 'testing infrastructure' do
  scenario 'can run app and check page content' do
    visit('/')
    expect(page).to have_text 'Welcome to Rock Paper Scissors!'
  end
end

feature 'entering names' do
  scenario 'player can submit name' do
    visit('/')
    fill_in :player_name, with: 'Nat'
    click_button 'Submit'
    expect(page).to have_text 'Nat'
  end
end
