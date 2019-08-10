feature 'Enter names' do
  scenario 'enter user names' do
    sign_in_and_play
    expect(page).to have_content('Player vs Computer')
  end
end