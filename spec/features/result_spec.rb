feature 'see result' do

  scenario 'player wins with rock' do
    allow_any_instance_of(Computer).to receive(:selection).and_return(:scissors)
    choose_rock
    click_button 'FIGHT'
    expect(page).to have_content "YOU WON!!!"
  end

  scenario 'player does not win with rock' do
    allow_any_instance_of(Computer).to receive(:selection).and_return(:paper)
    choose_rock
    click_button 'FIGHT'
    expect(page).not_to have_content "YOU WON!!!"
  end

  scenario 'player wins with paper' do
    allow_any_instance_of(Computer).to receive(:selection).and_return(:rock)
    choose_paper
    click_button 'FIGHT'
    expect(page).to have_content "YOU WON!!!"
  end

  scenario 'player does not win with paper' do
    allow_any_instance_of(Computer).to receive(:selection).and_return(:scissors)
    choose_paper
    click_button 'FIGHT'
    expect(page).not_to have_content "YOU WON!!!"
  end

  scenario 'player wins with scissors' do
    allow_any_instance_of(Computer).to receive(:selection).and_return(:paper)
    choose_scissors
    click_button 'FIGHT'
    expect(page).to have_content "YOU WON!!!"
  end

  scenario 'player does not win with scissors' do
    allow_any_instance_of(Computer).to receive(:selection).and_return(:scissors)
    choose_scissors
    click_button 'FIGHT'
    expect(page).not_to have_content "YOU WON!!!"
  end

end
