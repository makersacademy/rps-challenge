feature 'Player registers' do
  scenario 'player submit a name' do
    sign_in
    visit '/play'
    expect(page).to have_content 'Sam'

    expect(page).to have_field('move_rock', with: 'rock')
    expect(page).to have_field('move_paper', with: 'paper')
    expect(page).to have_field('move_scissors', with: 'scissors')
  end
end
