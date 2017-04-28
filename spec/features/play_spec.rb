feature 'Playing the game' do
  scenario "When I submit 'Rock' I am told if I have won" do
    allow_any_instance_of(Array).to receive(:sample).and_return(:scissors)
    sign_in_and_play
    click_button('rock')
    expect(page).to have_content "Player: rock beats Computer: scissors. You win!"
  end

  scenario "When I submit 'Rock' I am told if I have lost" do
    allow_any_instance_of(Array).to receive(:sample).and_return(:paper)
    sign_in_and_play
    click_button('rock')
    expect(page).to have_content "Computer: paper beats Player: rock. You lose!"
  end
end
