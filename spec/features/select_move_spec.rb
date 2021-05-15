feature 'Player selecting a move' do
  scenario 'Selecting scissors' do
    sign_in_and_play
    click_button 'Scissors'
    expect(page).to have_content 'Charlie selected Scissors'
  end

  scenario 'Selecting rock' do
    sign_in_and_play
    click_button 'Rock'
    expect(page).to have_content 'Charlie selected Rock'
  end

  scenario 'Selecting paper' do
    sign_in_and_play
    click_button 'Paper'
    expect(page).to have_content 'Charlie selected Paper'
  end
end

feature 'Computer selecting a move' do
  scenario 'Selecting scissors' do
    sign_in_and_play
    allow(Kernel).to receive(:rand).and_return(0)
    click_button 'Scissors'
    expect(page).to have_content 'Computer selected Scissors'
  end

  scenario 'Selecting scissors' do
    sign_in_and_play
    allow(Kernel).to receive(:rand).and_return(1)
    click_button 'Scissors'
    expect(page).to have_content 'Computer selected Rock'
  end

  scenario 'Selecting scissors' do
    sign_in_and_play
    allow(Kernel).to receive(:rand).and_return(2)
    click_button 'Scissors'
    expect(page).to have_content 'Computer selected Paper'
  end
end