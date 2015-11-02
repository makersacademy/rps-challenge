feature 'choose Rock, paper or scissor' do
  scenario 'choose Rock' do
  	visit ('/')
  	fill_in(:player_name, with: "Pablo")
  	click_button 'Submit'
  	click_button 'Rock'
  	expect(page).to have_content "You have chosen Rock!"
  end

  scenario 'choose paper' do
  	visit ('/')
  	fill_in(:player_name, with: "Pablo")
  	click_button 'Submit'
  	click_button 'Paper'
  	expect(page).to have_content "You have chosen Paper!"
  end

  scenario 'choose scissor' do
  	visit ('/')
  	fill_in(:player_name, with: "Pablo")
  	click_button 'Submit'
  	click_button 'Scissors'
  	expect(page).to have_content "You have chosen Scissors!"
  end

  scenario 'choose scissor' do
    visit ('/')
    fill_in(:player_name, with: "Pablo")
    click_button 'Submit'
    click_button 'Scissors'
    expect(page).to have_content "Computer choose"
  end
end