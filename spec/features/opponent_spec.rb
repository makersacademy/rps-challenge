feature "opponent's selection" do
scenario "my opponent's turn" do
  ready_to_play
  click_button('paper')
  expect(page).to have_content "Your opponent chose"
end 

scenario "result should be given" do
  ready_to_play
  click_button('scissors')
  expect(page).to have_content "result:"
end 

end