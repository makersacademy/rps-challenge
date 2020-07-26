feature 'Enter name' do
  scenario 'submitting name' do
    sign_in_and_play
    expect(page).to have_content 'Ilja vs. Computer'
  end
end

feature "Make choice" do
  scenario "Choose Rock" do
  sign_in_and_play
  expect(find("option[1]").click.value).to eq('Rock')
  expect(find("option[2]").click.value).to eq('Paper')
  expect(find("option[3]").click.value).to eq('Scissors')
end
end

feature 'Define a winner' do
  scenario "Compare values" do
    sign_in_and_play
    expect(winner('Ilja', 'Paper', 'Rock')).to eq('Ilja')
  end
end
