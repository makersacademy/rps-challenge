feature 'Testing form' do
  scenario 'The user can enter their name' do
    visit('/')
    fill_in 'player', with: 'Valentina'
    click_button 'Go!'
    expect(page).to have_text('What is your move Valentina?')
    end
  end