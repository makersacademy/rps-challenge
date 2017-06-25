feature 'shows choices' do
  scenario 'Can see my choice' do
    sign_in_and_play
    click_button("rock")
    expect(page).to have_content 'You chose rock'
  end
end

feature 'shows opponent\'s choice' do
  scenario 'Can see my opponents choice' do
    sign_in_and_play
    click_button("rock")
    expect(page).to have_content 'Your opponent chose'
  end
end

feature 'let\'s me play again' do
  scenario 'Can click the button to play again' do
    sign_in_and_play
    click_button("rock")
    click_button("Play again?")
    expect(page).to have_content("Welcome")
  end
end
