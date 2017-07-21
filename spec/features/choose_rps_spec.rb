feature 'choose rock, paper or scissors and see outcome' do
  before { sign_in_and_play }
  scenario 'choose rock' do
    click_on "rock"
    expect(page).to have_text('Ryan chose rock')
  end
  scenario 'choose paper' do
    click_on "paper"
    expect(page).to have_text('Ryan chose paper')
  end
  scenario 'choose scissors' do
    click_on "scissors"
    expect(page).to have_text('Ryan chose scissors')
  end
end
