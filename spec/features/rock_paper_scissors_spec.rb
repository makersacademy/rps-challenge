feature "choosing rock paper or scissors" do
  scenario "choosing rock" do
   enter_name
   choose :move, with: "Rock"
   click_button 'Play' 
   expect(page).to have_content "Asia chose Rock"
  end

  scenario "choosing scissors" do
   enter_name
   choose :move, with: "Scissors"
   click_button 'Play' 
   expect(page).to have_content "Asia chose Scissors"
  end

  scenario "choosing paper" do
    enter_name
    choose :move, with: "Paper"
   click_button 'Play' 
   expect(page).to have_content "Asia chose Paper"
  end
end