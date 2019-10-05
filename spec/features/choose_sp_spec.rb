feature 'Player chooses single of multiplayer' do
  scenario 'Player choose single player' do
    single_sign_in
    expect(page).to have_content "Welcome please enter your name."
  end
end
