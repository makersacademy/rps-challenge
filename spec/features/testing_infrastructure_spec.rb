feature 'root page message' do
  scenario 'shows welcome message' do
    visit('/')
    expect(page).to have_content 'Would you like to play a game'
  end
end

feature 'name form' do
  scenario 'welcomes name from form' do
    visit('/')
    fill_in :player, with: 'samir'
    click_button 'Enter Game'
    expect(page).to have_content 'Welcome samir!'
  end
end

feature 'Confirms RPS choice' do
  scenario 'Confirms that player chose paper' do
    single_sign_in
    click_button 'Paper'
    expect(page).to have_content 'You have chosen: Paper'
  end
  scenario 'Confirms that AI chose scissors' do
    single_sign_in
    srand(3)
    click_button 'Paper'
    expect(page).to have_content 'The opponent chose: Scissors'
  end
end

feature 'can resolve a match' do
  before do
    srand(3)
  end
  scenario 'can lose a game' do
    single_sign_in
    click_button 'Paper'
    expect(page).to have_content "You lose!"
  end
  scenario 'can win a game' do
    single_sign_in
    click_button 'Rock'
    expect(page).to have_content "You win!"
  end
  scenario 'can draw a game when choices match' do
    single_sign_in
    click_button 'Scissors'
    expect(page).to have_content "It's a draw!"
  end
end
