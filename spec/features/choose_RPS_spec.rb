feature "Choose Rock / Paper / Scissors feature" do

  scenario 'Choose Rock' do
    sign_in_and_play
    click_button "Rock"
    expect(page).to have_content "Affirmative, Dave. I read you."
  end

  scenario 'Choose Paper' do
    sign_in_and_play
    click_button "Paper"
    expect(page).to have_content "Just what do you think you're doing, Dave?"
  end

  scenario 'Choose Scissors' do
    sign_in_and_play
    click_button "Scissors"
    expect(page).to have_content "Without your space helmet, Dave? You're going to find that rather difficult."
  end

end
