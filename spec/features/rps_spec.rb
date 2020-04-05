feature "User can reigister name before playing an online game" do
  scenario "User can enter name into a field and submit" do
    visit "/"
    fill_in :enter_name, with: 'Alex'
    click_button 'Submit'
    expect(page).to have_content "Hello Alex"
  end
end

feature "User can choose rock/paper/scissors" do
  scenario "User can enter choice into a field and submit" do
    visit "/start_game"
    fill_in :rock_paper_scissor, with: 'rock'
    click_button 'RPS'
    expect(page).to have_content "You chose rock"
  end
end

feature "User can play again" do
  scenario "User can click a button to play another game" do
    visit "/results"
    click_button 'Play again'
    expect(page).to have_content "Hello Alex"
  end
end


## question is whether I need this test or not??
=begin
feature "AI also 'chooses' a hand" do
  scenario "outputs the random sample of the AI" do
    visit "/start_game"
    fill_in :rock_paper_scissor, with: 'rock'
    click_button 'RPS'
    expect(page).to have_content "AI selected paper"
  end
end
=end
