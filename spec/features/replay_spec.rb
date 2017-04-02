feature 'Replay' do
  scenario 'When you click replay it takes you back to the play page' do
    put_name_and_choice_paper
    click_on 'Replay'
    expect(page).to have_content 'make your choice'
  end
end
