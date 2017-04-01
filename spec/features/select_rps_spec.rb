feature 'Select rock, paper, or scissors' do
  scenario 'View your choice after making a selection' do
    fill_in_and_submit
    choose('Rock')
    click_button ('OK')
    expect(page).to have_content("You chose Rock")
  end

end
