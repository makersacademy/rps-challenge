feature 'Track best of three game' do
  scenario 'Win two of three games and show score' do
    sign_in
    choose('gesture', option: 'lizard')
    click_button('Play')
    click_button('Play Again')
    choose('gesture', option: 'lizard')
    click_button('Play')
    click_button('Play Again')
    expect(page).to have_content('Tommy: 2')
  end
end
