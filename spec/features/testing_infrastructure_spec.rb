feature 'root page message' do
  scenario 'shows welcome message' do
    visit('/')
    expect(page).to have_content 'please enter your name'
  end
end
# add a before to set single sign in
feature 'name form' do
  scenario 'welcomes name from form' do
    visit('/')
    fill_in :player, with: 'samir'
    click_button 'Enter Game'
    expect(page).to have_content 'Welcome samir!'
  end
end
#may lose this
feature 'Confirms RPS choice' do
  scenario 'Confirms that player chose paper' do
    single_sign_in
    click_button 'Paper'
    expect(page).to have_content 'You have chosen: Paper'
  end
  scenario 'Confirms that AI chose scissors' do
    single_sign_in
    click_button 'Paper'
    expect(page).to have_content 'The opponent chose: Scissors'
  end
end

feature 'can resolve a match' do
  scenario 'lose a game when ai wins' do
    single_sign_in
    click_button 'Paper'
    expect(page).to have_content "You Lose!"
  end
  scenario 'win a game when ai loses' do
    single_sign_in
    click_button 'Rock'
    expect(page).to have_content "You Win!"
  end
end
