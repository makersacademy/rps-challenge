feature 'Choose weapon' do
  scenario 'choose rock weapon' do
    sign_in_and_play
    expect(page).to have_content "Rock"
  end

  scenario 'choose paper weapon' do
    sign_in_and_play
    expect(page).to have_content "Paper"
  end

  scenario 'choose scissors weapon' do
    sign_in_and_play
    expect(page).to have_content "Scissors"
  end
end
