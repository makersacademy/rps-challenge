feature 'Player plays' do
  scenario "Player plays 'Rock'" do
    sign_in_and_play
    click_button 'Rock'
    expect(page).to have_content 'Norm played rock'
  end
  scenario "Player plays 'Scissors'" do
    sign_in_and_play
    click_button 'Scissors'
    expect(page).to have_content 'Norm played scissors'
  end
  scenario "Player plays 'Paper'" do
    sign_in_and_play
    click_button 'Paper'
    expect(page).to have_content 'Norm played paper'
  end
  scenario "There is a draw" do
    sign_in_and_play
    allow_any_instance_of(Array).to receive(:sample).and_return(:scissors)
    click_button 'Scissors'
    expect(page).to have_content 'Draw'
  end
  scenario "Player wins" do
    sign_in_and_play
    allow_any_instance_of(Array).to receive(:sample).and_return(:scissors)
    click_button 'Rock'
    expect(page).to have_content 'win'
  end
  scenario "Computer wins" do
    sign_in_and_play
    allow_any_instance_of(Array).to receive(:sample).and_return(:scissors)
    click_button 'Paper'
    expect(page).to have_content 'lose'
  end
end

