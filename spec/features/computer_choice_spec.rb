feature 'chosing rock paper or scissors for computer' do
  scenario 'computer is chosing scissors' do
    srand(3)
    visit('/')
    fill_in :marketeer1, with: 'Alex'
    click_button 'Register your name'
    click_button 'Rock'
    expect(page).to have_content('Computer choice: Scissors')
  end
end
