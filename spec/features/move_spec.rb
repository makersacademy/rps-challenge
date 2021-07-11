feature 'Player move' do

  before do 
    sign_in_and_play
  end

  scenario 'Player picks Rock' do
    click_button 'Rock'
    expect(page).to have_content 'You have chosen Rock!'
  end
    
  scenario 'Player picks Scissors' do
    click_button 'Scissors'
    expect(page).to have_content 'You have chosen Scissors!'
  end

  scenario 'Player picks Paper' do
    click_button 'Paper'
    expect(page).to have_content 'You have chosen Paper!'
  end
end