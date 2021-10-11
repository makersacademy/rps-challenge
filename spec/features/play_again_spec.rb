feature 'WEBPAGE: check play again option' do

  scenario 'Play again after 1 round' do
    sign_in_and_play('Timmy')
    click_button 'rock'
    click_button 'Play again'
    expect(page).not_to have_content 'chose'
    expect(page).to have_content 'Choose rock, paper or scissors!'
  end
  
end