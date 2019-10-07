feature 'Testing win/lose/draw conditions' do

  scenario "Win with lizard against spock" do
    allow(Enemy::CHOICES).to receive(:sample).and_return('spock')
    sign_in_and_choose_lizard
    expect(page).to have_content 'YOU WIN'
  end

  scenario "Lose with lizard against scissors" do
    allow(Enemy::CHOICES).to receive(:sample).and_return('scissors')
    sign_in_and_choose_lizard
    expect(page).to have_content 'YOU LOSE'
  end

  scenario "Draw with lizard against lizard" do
    allow(Enemy::CHOICES).to receive(:sample).and_return('lizard')
    sign_in_and_choose_lizard
    expect(page).to have_content 'A DRAW'
  end

end
