feature 'Choose' do
  scenario 'show all 3 options being rock, paper and scissors' do
    sign_in_and_play
    expect(page).to have_button "Rock"
    expect(page).to have_button "Paper"
    expect(page).to have_button "Scissors"
  end

  scenario 'choose one of the options' do
    sign_in_and_play
    click_button("Rock")
    expect(page).to have_content "You chose Rock!"
  end
end
