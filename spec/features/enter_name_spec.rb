feature 'enter name' do
  scenario 'player enters name and receives confirmation' do
    sign_up_and_play
    expect(page).to have_content('Jim vs. Machine')
  end
end
