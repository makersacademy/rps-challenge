feature "choosing rock paper or scissors" do
  scenario "choosing rock" do
   enter_name
   click_button 'Rock' 
   expect(page).to have_content "Asia chose Rock"
  end

  scenario "choosing scissors" do
   enter_name
   click_button 'Scissors' 
   expect(page).to have_content "Asia chose Scissors"
  end

  scenario "choosing paper" do
    enter_name
   click_button 'Paper' 
   expect(page).to have_content "Asia chose Paper"
  end
end