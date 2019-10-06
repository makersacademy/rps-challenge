feature 'Winning or losing a game' do

  scenario 'choosing rock and winning' do
    allow_any_instance_of(Player).to receive(:comp_weapon).and_return(:scissors)
    sign_in_and_play
    click_button 'Rock'
    click_button "Computers turn"
    expect(page).to have_content "Nabille wins!"
  end

  scenario 'choosing rock and losing' do
    allow_any_instance_of(Player).to receive(:comp_weapon).and_return(:paper)
    sign_in_and_play
    click_button 'Rock'
    click_button "Computers turn"
    expect(page).to have_content "Computer wins!"
  end

  scenario 'choosing paper and winning' do
    allow_any_instance_of(Player).to receive(:comp_weapon).and_return(:rock)
    sign_in_and_play
    click_button 'Paper'
    click_button "Computers turn"
    expect(page).to have_content "Nabille wins!"
  end

  scenario 'choosing paper and losing' do
    allow_any_instance_of(Player).to receive(:comp_weapon).and_return(:scissors)
    sign_in_and_play
    click_button 'Paper'
    click_button "Computers turn"
    expect(page).to have_content "Computer wins!"
  end

  scenario 'choosing scissors and winning' do
    allow_any_instance_of(Player).to receive(:comp_weapon).and_return(:paper)
    sign_in_and_play
    click_button 'Scissors'
    click_button "Computers turn"
    expect(page).to have_content "Nabille wins!"
  end

  scenario 'choosing scissors and losing' do
    allow_any_instance_of(Player).to receive(:comp_weapon).and_return(:rock)
    sign_in_and_play
    click_button 'Scissors'
    click_button "Computers turn"
    expect(page).to have_content "Computer wins!"
  end

  scenario 'choosing rock and drawing' do
    allow_any_instance_of(Player).to receive(:comp_weapon).and_return(:rock)
    sign_in_and_play
    click_button 'Rock'
    click_button "Computers turn"
    expect(page).to have_content "It's a draw!"
  end

  scenario 'choosing paper and drawing' do
    allow_any_instance_of(Player).to receive(:comp_weapon).and_return(:paper)
    sign_in_and_play
    click_button 'Paper'
    click_button "Computers turn"
    expect(page).to have_content "It's a draw!"
  end

  scenario 'choosing scissors and drawing' do
    allow_any_instance_of(Player).to receive(:comp_weapon).and_return(:scissors)
    sign_in_and_play
    click_button 'Scissors'
    click_button "Computers turn"
    expect(page).to have_content "It's a draw!"
  end
end
