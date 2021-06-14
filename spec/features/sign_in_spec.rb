feature 'Enter names' do
  scenario 'submitting names' do
    sign_in
    expect(page).to have_content 'Welcome, Player'
  end
end

feature 'Choosing a weapon' do
  scenario 'clicking rock' do
    sign_in
    click_button 'Rock'
    expect(page).to have_content 'Your weapon is Rock'
  end

  scenario 'clicking paper' do
    sign_in
    click_button 'Paper'
    expect(page).to have_content 'Your weapon is Paper'
  end

  scenario 'clicking scissors' do
    sign_in
    click_button 'Scissors'
    expect(page).to have_content 'Your weapon is Scissors'
  end
end

feature 'Playing a game' do
  scenario 'before pressing play' do
    sign_in
    click_button 'Rock'
    expect(page).to have_content('Score: 0')
  end
end
