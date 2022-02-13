

feature 'Computer selects option' do
    scenario 'Random Computer selection' do
    sign_in_and_play
    click_button 'Rock'
    expect(page).to have_content "Computer has choosen" 
  end 
end