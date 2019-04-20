feature 'Choose one from rps' do
  scenario 'choose Rock' do
    register
    chose_rock
    expect(page).to have_content 'Pikachu has chosen Rock'
  end

  scenario 'choose Paper' do
    register
    chose_paper
    expect(page).to have_content 'Pikachu has chosen Paper'
  end

  scenario 'choose Scissors' do
    register
    chose_scissors
    expect(page).to have_content 'Pikachu has chosen Scissors'
  end

end
