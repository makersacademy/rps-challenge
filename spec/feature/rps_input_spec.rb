feature 'displays the form for input and redirects' do

  scenario 'displays the options on the form' do
    sign_in_and_play
    click_button 'OK'
    expect(page).to have_content 'Rock'
  end

  scenario 'displays the options on the form' do
    sign_in_and_play
    click_button 'OK'
    expect(page).to have_content 'Scissors'
  end

  scenario 'displays the options on the form' do
    sign_in_and_play
    click_button 'OK'
    expect(page).to have_content 'Paper'
  end

  # scenario 'choose answer and click lets play' do
  #   sign_in_and_play
  #   click_button 'OK'
  #   choose('Rock')
  #   click_button "I'm ready!"
  #   expect(page).to have_content 'Jo chose Rock'
  # end
end
