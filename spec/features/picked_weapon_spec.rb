feature 'Picked weapon rb' do
  scenario 'player picked weapon' do
    sign_in_and_play
    click_button 'rock'
    expect(page).to have_content 'Justyna picked rock.'
  end

  # scenario 'player picked rock' do
  #   sign_in_and_play
  #   click_link 'Paper'
  #   expect(page).to have_content 'Justyna picked Paper.'
  # end
  #
  # scenario 'player picked rock' do
  #   sign_in_and_play
  #   click_link 'Scissors'
  #   expect(page).to have_content 'Justyna picked Scissors.'
  # end
end
