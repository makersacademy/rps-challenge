feature 'Testing infrastructure' do

scenario 'can run app and check page content' do
  visit('/')
  expect(page).to have_content("Welcove to Rock, Paper, Scissors game!")
end

end