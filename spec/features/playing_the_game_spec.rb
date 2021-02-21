feature 'Playing the game' do
  scenario "When I click 'Rock' I am told if I have won" do
    allow_any_instance_of(Array).to receive(:sample).and_return(:scissors)
    sign_in_and_play
    click_button 'Rock'
    expect(page).to have_content "Yay Chrissy you won!"
  end

  scenario "when I click 'Paper' I am told that it's a draw" do
    allow_any_instance_of(Array).to receive(:sample).and_return(:paper)
    sign_in_and_play
    click_button 'Paper'
    expect(page).to have_content "Chrissy it's a draw!"
  end

  scenario "When I click 'Scissors' I am told that it's a loss" do
    allow_any_instance_of(Array).to receive(:sample).and_return(:rock)
    sign_in_and_play
    click_button 'Scissors'
    expect(page).to have_content "Sorry Chrissy, you lost..."
  end
end
