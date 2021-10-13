def sign_in
  visit ('/')
  fill_in("name", with: "Sergei")
  click_button ('Submit')
end
