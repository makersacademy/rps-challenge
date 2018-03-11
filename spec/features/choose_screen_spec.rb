feature 'choose screen' do

  scenario 'proceed to choose screen' do
    visit('/')
    fill_in 'player_name', with: 'oi'
    click_button 'Submit'
    expect(page).to have_text('Choose your move!')
  end

end
