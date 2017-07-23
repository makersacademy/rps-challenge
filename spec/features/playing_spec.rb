feature 'Playing the game' do
  scenario "When I submit 'Rock' I am told if I have won" do
    allow_any_instance_of(Array).to receive(:sample).and_return('Scissors')
    sign_in_with_rock_and_play
    expect(page).to have_content "Bob wins!!"
  end

  scenario "When I submit 'Rock' I am told if I have lost" do
    allow_any_instance_of(Array).to receive(:sample).and_return('Paper')
    sign_in_with_rock_and_play
    expect(page).to have_content "You lose sucker!!"
  end

  scenario "When I submit 'Rock' I am told if it is a draw" do
    allow_any_instance_of(Array).to receive(:sample).and_return('Rock')
    sign_in_with_rock_and_play
    expect(page).to have_content "It's a draw!!"
  end
end
