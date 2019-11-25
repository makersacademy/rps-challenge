feature 'Options available' do
  scenario 'Options available to choose from' do
    sign_in_and_play
    expect(page).to have_button('Rock')
    expect(page).to have_button('Paper')
    expect(page).to have_button('Scissor')
  end
end

feature 'Player chooses one option' do
  scenario 'Choosing one option' do
    sign_in_and_play
    visit '/play'
    click_button 'Rock'
    expect(page).to have_content('You chose Rock')
  end
end
