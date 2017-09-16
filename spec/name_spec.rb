feature 'player enters name' do
  scenario 'check that name is entered' do
    sign_in_and_play
    expect(page).to have_content "So Joe, you think you've got what it take to beat me!"
  end
end
