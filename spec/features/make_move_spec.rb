feature 'make move and see result' do
  scenario "if player chooses 'rock', print move and see computer's move" do
    sign_in_and_play
    click_button "Play Rock, Paper, Scissors"
    click_button "ROCK"
    expect(page).to have_content "Your move"
    expect(page).to have_content "Computer move"
  end
end
