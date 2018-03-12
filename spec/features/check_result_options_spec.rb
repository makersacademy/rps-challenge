feature 'checking the chosen options' do
  scenario 'check for Rock button' do
    sign_in_and_play
    expect(page).to have_content 'Alex vs. Computer!'
    click_button 'Rock'
    expect(page).to have_content 'Alex chose Rock'
  end

  scenario 'check for Paper button' do
    sign_in_and_play
    expect(page).to have_content 'Alex vs. Computer!'
    click_button 'Paper'
    expect(page).to have_content 'Alex chose Paper'
  end

  scenario 'check for Scissors button' do
    sign_in_and_play
    expect(page).to have_content 'Alex vs. Computer!'
    click_button 'Scissors'
    expect(page).to have_content 'Alex chose Scissors'
  end
end
