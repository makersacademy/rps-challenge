feature ' so I can see my name in lights' do
  scenario 'I can enter my name' do
    register_to_play
    expect(page).to have_content 'Hi Maria - Click to play?'
  end
end
feature 'so I can start a games' do
  scenario 'Rock button will appear on the screen' do
    register_to_play
    expect(page).to have_selector(:link_or_button, 'Rock')
  end
  scenario 'Paper button will appear on the screen' do
    register_to_play
    expect(page).to have_selector(:link_or_button, 'Paper')
  end
  scenario 'Scissors button will appear on the screen' do
    register_to_play
    expect(page).to have_selector(:link_or_button, 'Scissors')
  end
  feature 'so I can see the game outcome' do
    scenario 'result will be shown on the screen' do
    register_to_play
    click_button 'Rock'
    expect(page).to have_content 'The winner is Maria'
    end
  end
end
