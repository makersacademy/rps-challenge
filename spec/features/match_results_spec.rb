feature 'Match can show results' do
  before { fill_name_and_submit }

  scenario 'player picks rock and sees result' do
    click_on 'Rock'
    expect(page).to have_content @message
  end

  scenario 'player picks scissors and sees result' do
    click_on 'Scissors'
    expect(page).to have_content @message
  end

  scenario 'player picks paper and sees result' do
    click_on 'Paper'
    expect(page).to have_content @message
  end
end
