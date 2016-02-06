
feature 'Choose weapon' do
  scenario 'weapons are available' do
    sign_in_and_play
    expect(page).to have_content 'Rock Paper Scissors'
  end

  scenario 'weapons are available' do
    sign_in_and_play
    choose('paper')
    click_button('Fight!')
    expect(page).to have_content 'You chose paper'
  end
end
