describe 'Choose Weapon Page' do
  scenario 'After vs screen we go to choose weapon screen' do
    sign_in_and_play
    click_button "I was born ready"
    expect(page).to have_content "Choose your weapon"
  end

  scenario "Can choose from the three RPS options" do
    sign_in_and_play
    click_button "I was born ready"
    expect(page).to have_content "Stone" && "Paper" && "Scissors"
  end
end
