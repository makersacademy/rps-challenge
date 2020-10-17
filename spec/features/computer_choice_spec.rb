feature 'chosing rock paper or scissors for computer' do
  scenario 'computer is chosing scissors' do
    srand(3)
    register_name
    click_button 'Rock'
    expect(page).to have_content('Computer choice: Scissors')
  end
end
