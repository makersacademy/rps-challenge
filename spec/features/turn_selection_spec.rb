feature 'Turn selection' do
  scenario 'The logic! Player can initialize a game!' do
    add_suzy
    select("Rock")
    click_on "Attack!"
    expect(page).to have_content "The winner is: "
  end
end
