feature 'Play RPS' do
  scenario 'Can run app and play RPS game' do
    sign_in_and_play
    click_button "Play Rock, Paper, Scissors"
    expect(page).to have_content "Your move, Bob"
  end
end