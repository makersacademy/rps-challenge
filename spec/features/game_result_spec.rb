feature 'results of the game are displayed' do
  scenario 'player loses' do
    sign_in
    click_button('rock')
    srand(500)
    expect(page).to have_content('Dec loses.')
  end
end
