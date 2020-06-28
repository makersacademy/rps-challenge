feature 'Testing visibility of content on the play page' do
  scenario 'User can see rock button' do
    sign_in
    expect(page).to have_button('Rock')
  end
  scenario 'User can see paper button' do
    sign_in
    expect(page).to have_button('Paper')
  end
  scenario 'User can see scissors button' do
    sign_in
    expect(page).to have_button('Scissors')
  end
end

feature 'Testing routing of buttons on play page' do
  scenario 'User can click on the rock button and see output' do
    sign_in
    click_button "rock"
    expect(page).to have_content("Josh selected Rock")
  end
end
