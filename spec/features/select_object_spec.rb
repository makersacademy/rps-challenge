feature 'select object' do
  scenario 'player views button to select rock' do
    sign_up_and_play
    expect(page).to have_button('Rock')
  end
  scenario 'player views button to select paper' do
    sign_up_and_play
    expect(page).to have_button('Paper')
  end
  scenario 'player views an option to select scissors' do
    sign_up_and_play
    expect(page).to have_button('Scissors')
  end
end
