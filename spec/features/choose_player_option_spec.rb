feature "Choose option" do 
  scenario "when player chooses rock, return rock" do
    sign_in_and_play
    click_button 'Rock'
    expect(page).to have_content "Aisha played Rock"
  end 

  scenario "when player chooses paper, return paper" do
    sign_in_and_play
    click_button 'Paper'
    expect(page).to have_content "Aisha played Paper"
  end 

  scenario "when player chooses scissors, return scissors" do
    sign_in_and_play
    click_button 'Scissors'
    expect(page).to have_content "Aisha played Scissors"
  end 
end 
