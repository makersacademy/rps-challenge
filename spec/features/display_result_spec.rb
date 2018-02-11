feature 'displays result' do
  scenario 'player chooses rock, computer chooses rock' do
    allow_any_instance_of(Array).to receive(:sample).and_return 'Rock'
    sign_in_as_hannah
    click_button('Rock')
    expect(page).to have_content("It's a draw")
  end
end
