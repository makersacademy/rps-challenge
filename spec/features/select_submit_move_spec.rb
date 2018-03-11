feature 'Choose Move' do
  scenario 'Select move using form radio and submit' do
    sign_in_and_play
    within('div .rock') do
      check('Rock')
    end
      click_button('submit')
    expect(page).to have content 'You have selected Paper'

  end
end
