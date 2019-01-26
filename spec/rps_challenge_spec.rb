feature RPS do
scenario 'Initial page allows user to input username' do
  visit('/')
  expect(page).to have_field("player1_name")
end
end
