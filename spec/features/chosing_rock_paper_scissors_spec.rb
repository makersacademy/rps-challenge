feature 'chosing rock paper or scissors' do
  scenario 'marketeer is chosing rock' do
    visit('/')
    fill_in :marketeer1, with: 'Alex'
    click_button 'Register your name'
    click_button 'Rock'
    expect(page).to have_content('Alex choice: Rock')
  end
  # scenario 'marketeer is chosing paper' do
  #   visit('/')
  #   fill_in :marketeer1, with: 'Alex'
  #   click_button 'Register your name'
  #   click_button 'Rock'
  #   expect(page).to have_content('Alex choice: Paper')
  # end
end
