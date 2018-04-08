require './app'

feature 'Players made there choices' do
  scenario 'when players made same choice' do
    sign_in_and_play
    draw
    expect(page).to have_content "Mary has chosen Rock vs Alf has chosen Rock"
    expect(page).to have_content "IT'S A DRAW! Please try again!"
  end
  scenario 'when players made same choice and want to try again' do
    sign_in_and_play
    draw
    click_button 'Try again!'
    expect(page).to have_content 'Mary vs. Alf'
  end
  scenario 'when players made different choices' do
    sign_in_and_play
    paper
    click_button 'Submit'
    click_button 'Choose'
    choose('choice', option: 'Scissors', allow_label_click: true)
    click_button 'Submit'
    expect(page).to have_content "WON THE GAME!"
  end
end
