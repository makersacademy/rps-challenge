feature "Enter names" do
  scenario "submitting names" do
    submit_name
    expect(page).to have_content 'Hello Noel. Let\'s play Rock, Paper, Scissors'
  end
end
