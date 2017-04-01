feature 'Replay' do
  scenario 'There is a replay button' do
    put_name_and_choice_paper
    click_button 'Replay'
    expect(page).to have_content 'make your choice'
  end
end
