feature 'start game' do
  
  scenario 'Player given three options to choose' do
    visit('/')
    fill_in('user_input', with: 'Al')
    click_button("Light it up!")
    click_button("Let's play!")
    expect(page).to have_content "Choose your weapon!"
  end

end