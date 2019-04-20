feature 'Choose rock paper or scissors' do
  scenario 'player chooses rock' do
    sign_in_and_play  
    click_button('Rock')
    expect(page).to have_content('Rock')
  end
  scenario 'Player chooses paper' do
    sign_in_and_play  
    click_button('Paper')
    expect(page).to have_content('Paper')
  end
  scenario 'Player chooses rock' do
    sign_in_and_play  
    click_button('Scissors')
    expect(page).to have_content('Scissors')
  end
end