feature "Playing through to the end of the game" do
  scenario "shows the randomly generated move of computer" do
    solo_submit_name_select_rock('Chris')

    expect(page).to have_content "The computer chose"
  end

  scenario "shows two options, play another solo game or go to home page" do
    solo_submit_name_select_rock('Chris')

    expect(page).to have_button "Play another solo game"
    expect(page).to have_button "Home"
  end

  scenario "will display win, loss or draw" do
    allow_any_instance_of(RPS).to receive(:randomise).and_return('Rock')
    solo_submit_name_select_rock('Chris')

    expect(page).to have_content "Draw!"
    
    allow_any_instance_of(RPS).to receive(:randomise).and_return('Paper')
    click_button "Play another solo game"
    click_button "Rock"
    
    expect(page).to have_content "Computer wins!"
    
    allow_any_instance_of(RPS).to receive(:randomise).and_return('Scissors')
    click_button "Play another solo game"
    click_button "Rock"

    expect(page).to have_content "Chris wins!"
  end

end
