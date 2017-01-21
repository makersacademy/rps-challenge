# As a marketeer
# So that I can enjoy myself away from the daily grind
# I would like to be able to play rock/paper/scissors

feature "Play RPC" do

  scenario "I would like to play RPS using Rock" do
    sign_in_one_player
    click_on 'Rock'
    expect(page).to have_content "Rock"
  end

  scenario "I would like to play RPS using Paper" do
    sign_in_one_player
    sign_in_one_player
    click_on 'Paper'
    expect(page).to have_content "Paper"
  end

  scenario "I would like to play RPS using Scissors" do
    sign_in_one_player
    sign_in_one_player
    click_on 'Scissors'
    expect(page).to have_content "Scissors"
  end
end
