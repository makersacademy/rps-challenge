feature 'show winners' do
  scenario 'when player one has rock and player two has paper' do
    sign_in_and_play
    choose('Rock')
    choose('Paper')
    expect(page).to have_content('James wins')
  end
end
