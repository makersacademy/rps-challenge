feature "Play Rock Scissors Paper" do
  
  scenario "Use rock" do
    sign_in_1_player
    click_on 'Rock'
    expect(page).to have_content "Rock"
  end
    
  scenario "Use Paper" do
    sign_in_1_player
    click_on 'Paper'
    expect(page).to have_content "Paper"
  end

  scenario "Use Scissors" do
    sign_in_1_player
    click_on 'Scissors'
    expect(page).to have_content "Scissors"
  end

end