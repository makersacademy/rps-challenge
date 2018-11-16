feature 'Game Options' do
  scenario 'players can choose rock' do
    sign_in_and_play
    expect(page).to have_selector("input[type=submit][value='Rock']")
  end
  scenario 'players can choose paper' do
    sign_in_and_play
    expect(page).to have_selector("input[type=submit][value='Paper']")
  end
  scenario 'players can choose scissors' do
    sign_in_and_play
    expect(page).to have_selector("input[type=submit][value='Scissors']")
  end
end
