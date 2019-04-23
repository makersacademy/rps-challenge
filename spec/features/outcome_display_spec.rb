feature 'displays outcome' do
  scenario 'shows it is a draw' do
    visit '/game'
    allow_any_instance_of(Array).to receive(:sample).and_return('Rock')
    click_button "Rock"
    expect(page).to have_content "It's a draw!"
  end
  scenario 'shows the player wins' do
    visit '/game'
    allow_any_instance_of(Array).to receive(:sample).and_return('Rock')
    click_button "Paper"
    expect(page).to have_content "You won!"
  end
  scenario 'shows the player loses' do
    visit '/game'
    allow_any_instance_of(Array).to receive(:sample).and_return('Rock')
    click_button "Scissors"
    expect(page).to have_content "You lost!"
  end
end
