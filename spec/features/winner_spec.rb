feature 'Winner' do
  scenario 'Rock vs Scissors' do
    sign_in_and_play
    allow(Kernel).to receive(:rand).and_return(0)
    click_button 'Rock'
    expect(page).to have_content 'Player wins!'
  end

  scenario 'Rock vs Paper' do
    sign_in_and_play
    allow(Kernel).to receive(:rand).and_return(2)
    click_button 'Rock'
    expect(page).to have_content 'Computer wins!'
  end

  scenario 'Scissors vs Paper' do
    sign_in_and_play
    allow(Kernel).to receive(:rand).and_return(2)
    click_button 'Scissors'
    expect(page).to have_content 'Player wins!'
  end

  scenario 'Paper vs Rock' do
    sign_in_and_play
    allow(Kernel).to receive(:rand).and_return(1)
    click_button 'Paper'
    expect(page).to have_content 'Player wins!'
  end

  scenario 'Paper vs Scissors' do
    sign_in_and_play
    allow(Kernel).to receive(:rand).and_return(0)
    click_button 'Paper'
    expect(page).to have_content 'Computer wins!'
  end

  scenario 'Scissors vs Rock' do
    sign_in_and_play
    allow(Kernel).to receive(:rand).and_return(1)
    click_button 'Scissors'
    expect(page).to have_content 'Computer wins!'
  end

  scenario 'Scissors vs Scissors' do
    sign_in_and_play
    allow(Kernel).to receive(:rand).and_return(0)
    click_button 'Scissors'
    expect(page).to have_content 'Draw!'
  end

  scenario 'Rock vs Rock' do
    sign_in_and_play
    allow(Kernel).to receive(:rand).and_return(1)
    click_button 'Rock'
    expect(page).to have_content 'Draw!'
  end

  scenario 'Paper vs Paper' do
    sign_in_and_play
    allow(Kernel).to receive(:rand).and_return(2)
    click_button 'Paper'
    expect(page).to have_content 'Draw!'
  end
end