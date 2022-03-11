feature 'moves' do
  scenario 'user can choose rock/paper/scissors' do
    sign_in_and_play
    expect(page).to have_button('rock')
    expect(page).to have_button('paper')
    expect(page).to have_button('scissors')
  end
end
