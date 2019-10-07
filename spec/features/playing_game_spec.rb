# As a marketeer
# So that I can enjoy myself away from the daily grind
# I would like to be able to play rock/paper/scissors

feature 'Rock Paper scissors' do
  before do
    sign_in_vs_paper
  end
  scenario 'i can choose rock' do
    click_button('Rock')
    expect(page).to have_content "Balboa chose Rock!"
  end
  scenario 'i can win' do
    click_button "Scissors"
    expect(page).to have_content "Balboa wins!"
  end
  scenario 'i can lose' do
    click_button "Rock"
    expect(page).to have_content "Balboa loses!"
  end
  scenario 'i can draw' do
    click_button "Paper"
    expect(page).to have_content "It's a hard earned draw."
  end
end
