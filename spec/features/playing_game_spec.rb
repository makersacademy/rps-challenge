feature "playing game" do

  scenario "player sees three buttons" do
    log_in
    expect do
      find_button "Rock"
      find_button "Paper"
      find_button "Scissors"
    end.not_to raise_error
  end

  scenario "player Clicks a button" do
    log_in
    click_button "Paper"
    expect(page).to have_content("Billy picked paper")
  end
end
