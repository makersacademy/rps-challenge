feature 'playing a game' do
  scenario 'player has chosen an option and pressed submit' do
    sign_in
    click_on 'Scissors'
    expect(page).to have_content 'dave chose Scissors'
    expect(page).to have_content 'Computer chose '
  end
end