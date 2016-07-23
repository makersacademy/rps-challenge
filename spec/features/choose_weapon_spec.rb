feature 'choose weapon' do
  scenario 'rock' do
    sign_in
    player_1_rock
    expect(page).to have_content 'Alex plays Rock against AI Overlord'
  end

  scenario 'paper' do
    sign_in
    player_1_paper
    expect(page).to have_content 'Alex plays Paper against AI Overlord'
  end

  scenario 'scissors' do
    sign_in
    player_1_scissors
    expect(page).to have_content 'Alex plays Scissors against AI Overlord'
  end
end
