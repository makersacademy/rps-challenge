feature 'choice confirmation' do
  scenario 'player is asked to confirm choice' do
    sign_in_and_play
    click_button('rock')
    expect(page).to have_content('Your choice: rock')
  end
end
