feature 'Playing the game' do
  scenario "When I submit 'Rock' I am told if I have won" do
    allow_any_instance_of(Array).to receive(:sample).and_return(:scissors)
    sign_in_and_play
    choose('choice', option: 'rock')
    click_button('Submit')
    expect(page).to have_content "Reena win"
  end

  scenario "When I submit 'Scissors' I am told if I have lost" do
    allow_any_instance_of(Array).to receive(:sample).and_return(:rock)
    sign_in_and_play
    choose('choice', option: 'scissors')
    click_button('Submit')
    expect(page).to have_content "Reena lose"
  end

  scenario "When both submit 'Paper' I am told if it is a draw" do
    allow_any_instance_of(Array).to receive(:sample).and_return(:paper)
    sign_in_and_play
    choose('choice', option: 'paper')
    click_button('Submit')
    expect(page).to have_content "Reena draw"
  end
end
