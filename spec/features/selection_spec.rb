feature 'the actual selection' do
  it 'allows the player to select and receive confirmation of chosen option' do
    sign_in_and_play
    page.choose('Rock')
    click_button ('Submit')
    expect(page).to have_content('You have selected Rock')
  end
end
