feature 'player can enter their name' do
  scenario 'enter name and click submit' do
    visit('/')
    fill_in 'player_name', with: 'Mahmud'
    click_button 'submit'
  end
end
