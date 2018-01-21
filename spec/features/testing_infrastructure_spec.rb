feature 'Enter the name of the player' do
  scenario 'Submitting name of the player' do
    sign_in_and_play
    expect(page).to have_content "Rock Paper Scissors! Agata VS. Computer"
  end
end

feature "Selection" do
  scenario 'Rock' do
    sign_in_and_play
    click_button "Rock"
    expect(page).to have_content "Rock"
  end

  scenario 'Paper' do
    sign_in_and_play
    click_button "Paper"
    expect(page).to have_content "Paper"
  end

  scenario 'Scissors' do
    sign_in_and_play
    click_button "Scissors"
    expect(page).to have_content "Scissors"
  end

end
