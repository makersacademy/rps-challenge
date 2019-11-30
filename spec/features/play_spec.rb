feature 'play a game' do
  scenario "display 3 options" do
    sign_in_and_play
    expect(page).to have_button "Rock"
    expect(page).to have_button "Paper"
    expect(page).to have_button "Scissors"
  end

  scenario "choose one option" do
    sign_in_and_play
    click_button "Rock"
    expect(page).to have_content "You chose Rock!"
  end
end
