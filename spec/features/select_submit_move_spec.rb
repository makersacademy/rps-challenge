feature 'Choose Move' do
  scenario 'Select move using form radio and submit' do
    sign_in_and_play
    within('div.selectioin') do
      check('rock')
      click_button('submit')
    end
    expect(page).to have content 'You have selected'

  end
end
