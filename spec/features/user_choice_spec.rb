feature 'user picks a choice' do
  scenario 'when rock is the choice' do
    sign_in_and_play
    choose 'rock'
    click_button
    expect(page).to have_content "You picked rock"
  end
end
