feature 'check results' do

  scenario 'P1 chooses rock' do
    sign_in_and_play
    fill_in :player_1_choice, with: 'rock'
    click_button 'Choice'
    expect(page).not_to have_content 'You chose: scissors'
    expect(page).to have_content 'You chose: rock'
  end
  
end