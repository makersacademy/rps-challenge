def random
    array = ['Rock', 'Paper','Scissors']
    rand = array.sample
end

a = random

feature 'Computer selects option' do
    scenario 'Random Computer selection' do
    sign_in_and_play
    click_button 'Rock'
    expect(page).to have_content "Oponent Selection #{a}" 
  end 
end