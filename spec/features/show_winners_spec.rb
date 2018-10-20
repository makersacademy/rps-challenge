feature 'show winners' do
  scenario 'when player one has rock and player two has paper' do
    sign_in_and_play_standard
    choose('Rock')
    click_button('Submit')
    choose('Paper')
    click_button('Submit')
    expect(page).to have_content('James wins')
  end
end
