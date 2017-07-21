feature 'Entering name' do
  scenario 'Submitting name' do
    sign_in_and_play('Artemis')
    expect(page).to have_content ('Artemis')
  end
end
