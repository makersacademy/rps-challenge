feature 'View wins' do
  scenario 'see how many times player 1 has won' do
    sign_in_and_play
    expect(page).to have_content 'Wins so far: 0'
  end
end
