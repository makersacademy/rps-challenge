feature 'Choose weapon' do
  scenario 'Player chooses rock' do
    sign_in_and_play
    choose('rock')
    click_button("Let's go!")
    expect(page).to have_content 'You chose rock'
  end
end
