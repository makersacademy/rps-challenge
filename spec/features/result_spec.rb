feature "results" do
  scenario "the player's choice of Rock is displayed on the results page" do
    sign_in_and_play
    choose("Rock")
    click_button("Go")

    expect(page).to have_content "Ellie chose rock"
  end

  scenario "the player's choice of paper is displayed on the results page" do
    sign_in_and_play
    choose("Paper")
    click_button("Go")

    expect(page).to have_content "Ellie chose paper"
  end

  scenario "the player's choice of scissors is displayed on the results page" do
    sign_in_and_play
    choose("Scissors")
    click_button("Go")

    expect(page).to have_content "Ellie chose scissors"
  end

  scenario "the computer's choice of scissors is displayed on the results page" do
    allow_any_instance_of(Computer).to receive(:choose).and_return(:rock)
    sign_in_and_play
    choose("Rock")
    click_button("Go")

    expect(page).to have_content "Computer chose rock"
  end

  scenario "the computer's choice of scissors is displayed on the results page" do
    allow_any_instance_of(Computer).to receive(:choose).and_return(:paper)
    sign_in_and_play
    choose("Rock")
    click_button("Go")

    expect(page).to have_content "Computer chose paper"
  end

  scenario "the computer's choice of scissors is displayed on the results page" do
    allow_any_instance_of(Computer).to receive(:choose).and_return(:scissors)
    sign_in_and_play
    choose("Rock")
    click_button("Go")

    expect(page).to have_content "Computer chose scissors"
  end

end
