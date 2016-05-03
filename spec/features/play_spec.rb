feature "choosing rock, paper or scissors" do
  scenario "if rock" do
    sign_in_and_play
    click_button 'game begins now'
    click_button  "rock"
  end

  scenario "if paper" do
    sign_in_and_play
    click_button 'game begins now'
    click_button "paper"
  end

  scenario "if scissors" do
    sign_in_and_play
    click_button 'game begins now'
    click_button "scissors"
  end
end
