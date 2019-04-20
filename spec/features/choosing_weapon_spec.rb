feature 'choosing RP or S' do
  scenario 'see available options' do
    sign_in_and_play
    expect(page).to have_content 'Pick one of the below:'
    expect(page).to have_content 'Rock'
    expect(page).to have_content 'Paper'
    expect(page).to have_content 'Scissors'
  end

  scenario 'choose weapon and confirm' do
    sign_in_and_play
    click_button('Rock')
    expect(page).to have_content 'You chose Rock'
  end
end 
