feature 'choice' do
  scenario 'Battle page should give the uesr the choice of: Rock, paper or scissors' do
    sign_in_and_play
    expect(page).to have_content("ROCK") and have_content("PAPER") and have_content("SCISSORS")
  end
end