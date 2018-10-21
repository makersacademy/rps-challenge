feature 'Register name' do
  scenario 'Enter name and output a greeter to the game' do
    sign_in_and_play
    expect(page).to have_content 'Welcome Tom, you will face off against the computer in a game of rock, paper, scissors. Please choose...'
  end
end

feature 'Choose an option' do
  scenario 'Choose either rock, paper or scissors' do
    sign_in_and_play
    page.select 'Rock', from: 'selection'
    click_button 'Submit'
    expect(page).to have_content 'You chose Rock...'
  end
end
