feature 'you can play multiple games' do
  scenario 'click play again to play another game' do
    sign_in
    click_button('rock')
    click_button('play again')
    expect(page).to have_current_path('/play')
  end
end
