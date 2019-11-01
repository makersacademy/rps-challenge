feature 'Choose option' do
  scenario 'show available options' do
    sign_in_to_play
    click_button "Click here to continue"
    expect(page).to have_content 'Dave choose rock, paper or scissors'
  end

  scenario 'choose an option' do
    sign_in_to_play
    click_button "Click here to continue"
    select('Rock', from: 'player_choice')
    click_button 'Submit'
    expect(page).to have_content 'Dave you chose rock'
  end

end
