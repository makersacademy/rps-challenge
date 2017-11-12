feature 'Allowing a user to enter their name to play RPS' do
  scenario 'Making sure there is a form for a user to enter their name' do
    visit '/'
    expect(page).to have_field('name')
  end
  scenario 'Ensuring that the user is able to submit their name' do
    visit '/'
    expect(page).to have_button('Let\'s play!')
  end
  scenario 'Displaying the player\'s name in the game view' do
    sign_in_and_play
    expect(page).to have_content('Peter, let\'s play Rock Paper Scissors!')
  end
end
