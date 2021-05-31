feature 'The player can choose either rock, paper or scissors' do
  scenario 'The player has submitted their name' do
    sign_in_and_play
    expect(page).to have_content('Rock')
    expect(page).to have_content('Paper')
    expect(page).to have_content('Scissors')
  end 

  scenario 'The player chooses Rock' do
    sign_in_and_play
    choose("move", option: "Rock")
    click_button('Sarah\'s move')
    expect(page).to have_content 'Sarah has selected Rock'
  end
end
