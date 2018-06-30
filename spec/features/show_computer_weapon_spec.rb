feature 'shows computer\'s weapon' do
  scenario 'computer selects rock' do
    allow_any_instance_of(Array).to receive(:sample).and_return 'Rock'
    sign_in_as_hannah
    click_button('Rock')
    expect(page).to have_content('Computer chose: Rock')
  end
end
