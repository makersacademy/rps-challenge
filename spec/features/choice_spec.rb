feature 'The player can choose either rock, paper or scissors' do
  scenario 'The player has submitted their name' do
    sign_in_and_play
    expect(page).to have_button('Rock')
    expect(page).to have_button('Paper')
    expect(page).to have_button('Scissors')
  end 

  scenario 'The player chooses Rock' do
    sign_in_and_play
    click_button('Rock')
    expect(page).to have_content 'Sarah has selected Rock'
  end
end
