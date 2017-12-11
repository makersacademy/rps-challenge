feature 'Play Game' do
  scenario 'click on Rock' do
    name_entry_and_play
    click_button 'Rock'
    expect(page).to have_content 'name went for rock'
  end

  scenario 'click on Paper' do
    name_entry_and_play
    click_button 'Paper'
    expect(page).to have_content 'name went for paper'
  end

  scenario 'click on Scissors' do
    name_entry_and_play
    click_button 'Scissors'
    expect(page).to have_content 'name went for scissors'
  end

  scenario 'click on Spock' do
    name_entry_and_play
    click_button 'Spock'
    expect(page).to have_content 'name went for spock'
  end

  scenario 'click on Lizard' do
    name_entry_and_play
    click_button 'Lizard'
    expect(page).to have_content 'name went for lizard'
  end
end
