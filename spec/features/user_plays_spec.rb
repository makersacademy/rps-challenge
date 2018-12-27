feature 'Play' do

  scenario 'A checkbox' do
    sign_in
    visit '/play'
    expect(page).to have_field('move_rock', with: 'rock')
    expect(page).to have_field('move_paper', with: 'paper')
    expect(page).to have_field('move_scissors', with: 'scissors')
  end

  scenario 'user submits move and gets his move displayed' do
    sign_in_and_play
    choose('move_rock')
    expect(page).to have_selector("input[value='rock']")
  end
end
