feature 'Player selection of Rock, Paper or Scissors' do

  scenario 'player can select Rock' do
    enter_name
    click_button 'Rock'
    expect(page).to have_content 'Coco: Rock'
  end

  scenario 'player can select Paper' do
    enter_name
    click_button 'Paper'
    expect(page).to have_content 'Coco: Paper'
  end

  scenario 'player can select Scissors' do
    enter_name
    click_button 'Scissors'
    expect(page).to have_content 'Coco: Scissors'
  end

end
