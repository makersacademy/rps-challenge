RPS Challenge - Chuka Okoye
==================

First user story completed, 100% coverage however having occuring RSpec error:
```
  1) Adding name Type name
     Failure/Error: expect(page).to have_content "Welcome, Charlotte!"
       expected to find text "Welcome, Charlotte!" in ""
     # ./spec/features/name_spec.rb:5:in `block (2 levels) in <top (required)>'

```
Website works so I am not sure what is wrong with the name_spec.rb

How to run in terminal:

```
ruby app.rb # to activate
rackup # to run localhost server
```
