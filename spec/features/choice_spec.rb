feature 'player can choose a weapon' do

  scenario 'player chooses Rock' do
    sign_in_and_play
    page.choose('Rock')
    click_button 'Submit'
    expect(page).to have_content 'Sam, your weapon is Rock!!'
  end
  
end