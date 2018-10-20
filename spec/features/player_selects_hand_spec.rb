feature 'player selects option' do
  scenario 'selects rock' do
    sign_in_and_play_standard
    choose('Rock')
    click_button('Submit')
    expect(page).to have_content('Current Player: James')
  end
end
