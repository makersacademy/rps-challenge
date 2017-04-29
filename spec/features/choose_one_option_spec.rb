feature 'Choose one option' do

  scenario 'Can see the instructions' do
    sign_in_and_play
    expect(page).to have_content('Cristina, choose one from the following options: rock, paper or scissors.')
  end

  scenario 'Can see the three options' do
    sign_in_and_play
    expect(page).to have_button 'Rock'
    expect(page).to have_button 'Paper'
    expect(page).to have_button 'Scissors'
  end
end

=begin
  scenario 'Can choose one option' do
    sign_in_and_play
    click_button 'Rock'
    expect(page).to have_content 'You have chosen: Rock'
  end
end
=end
