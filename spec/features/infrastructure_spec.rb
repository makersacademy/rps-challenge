feature "Gets user's name" do

  scenario 'greets user' do
    visit ('/')
    expect(page).to have_content("Enter your name below")
  end

  scenario 'submits name' do
    start_game
    expect(page).to have_content("Welcome Ray!")
  end

  feature "Gets user's move" do
    scenario 'it allows user to chose Rock' do
      start_game
      click_button "Rock"
      expect(page).to have_content("You played Rock.")
    end

    scenario 'it allows user to chose Paper' do
      start_game
      click_button "Paper"
      expect(page).to have_content("You played Paper.")
    end

    scenario 'it allows user to chose Scissors' do
      start_game
      click_button "Scissors"
      expect(page).to have_content("You played Scissors.")
    end
  end

end
