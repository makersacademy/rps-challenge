feature 'choosing a play' do
  scenario 'player chooses rock' do
    sign_in_and_play
    click_button 'rock'
    expect(page).to have_content 'You choose: rock'
  end

  scenario 'player chooses paper' do
    sign_in_and_play
    click_button 'paper'
    expect(page).to have_content 'You choose: paper'
  end

  scenario 'shows what opponent has chosen' do
    sign_in_and_play
    click_button 'paper'
    expect(page).to have_content 'AI chooses:'
  end

end
