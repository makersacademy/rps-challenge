feature 'Play Game' do
  scenario 'click on Rock' do
    name_entry_and_play
    click_button 'Rock'
    expect(page).to have_content 'Rock vs'
  end

  scenario 'click on Paper' do
    name_entry_and_play
    click_button 'Paper'
    expect(page).to have_content 'Paper vs'
  end

  scenario 'click on Scissors' do
    name_entry_and_play
    click_button 'Scissors'
    expect(page).to have_content 'Scissors vs'
  end
end
