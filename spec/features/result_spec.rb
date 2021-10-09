feature 'check results' do

  scenario 'P1 chooses rock' do
    sign_in_and_play
    click_button 'rock'
    expect(page).not_to have_content 'You chose: scissors'
    expect(page).to have_content 'You chose: rock'
  end
  
end