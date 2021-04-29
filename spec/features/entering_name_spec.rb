feature 'player can enter name' do
  scenario 'and sees it displayed after entering on the home page' do
    sign_in_and_play
    expect(page).to have_content("It's time to play, BIMINI BON BOULASH!")
  end
end
