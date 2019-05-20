feature "MakeMove" do

  scenario "choose rock" do
    sign_in_and_play
    choose("Rock")
    click_button 'Submit'
    expect(page).to have_content 'Halsey played Rock'
  end

  scenario "choose paper" do
    sign_in_and_play
    choose("Paper")
    click_button 'Submit'
    expect(page).to have_content 'Halsey played Paper'
  end

  scenario "choose scissors" do
    sign_in_and_play
    choose("Scissors")
    click_button 'Submit'
    expect(page).to have_content 'Halsey played Scissors'
  end

  scenario "Computer chooses" do
    sign_in_and_play
    choose("Rock")
    click_button 'Submit'
    expect(page).to have_content 'Computer played'
  end
end
