feature 'shows win lose or draw' do
  scenario "user submits move and gets 'It/'s a draw message' message" do
    sigin_in_as_sam
    visit '/play'
    allow(Kernel).to receive(:rand) { 0 }
    choose('move_rock')
    expect(page).to have_selector("input[value='rock']")
    click_button 'Make your move!'
    expect(page).to have_content("It's a draw...")
  end

  scenario 'user submits move and gets You Lose message' do
    sigin_in_as_sam
    visit '/play'
    allow(Kernel).to receive(:rand) { 1 }
    choose('move_rock')
    expect(page).to have_selector("input[value='rock']")
    click_button 'Make your move!'
    expect(page).to have_content('You Lose!')
  end

  scenario 'user submits move and gets You Win message' do
    sigin_in_as_sam
    visit '/play'
    allow(Kernel).to receive(:rand) { 2 }
    choose('move_rock')
    expect(page).to have_selector("input[value='rock']")
    click_button 'Make your move!'
    expect(page).to have_content('You Win!')
  end

  scenario 'computer move is paper message' do
    sigin_in_as_sam
    visit '/play'
    allow(Kernel).to receive(:rand) { 1 }
    choose('move_rock')
    expect(page).to have_selector("input[value='rock']")
    click_button 'Make your move!'
    expect(page).to have_content('Compuer move: paper')
  end

  scenario 'user move is scissors message' do
    sigin_in_as_sam
    visit '/play'
    allow(Kernel).to receive(:rand) { 0 }
    choose('move_scissors')
    expect(page).to have_selector("input[value='scissors']")
    click_button 'Make your move!'
    expect(page).to have_content('Your move: scissors')
  end
end
