# Watir interacts with a browser the same way people do: clicking links, filling out forms and validating text. 
require 'watir'
# driver for chrome, firefox, internet explorer, ...
require 'webdrivers'

url = 'https://tudogostoso.com.br'

# Start a browser session with URL
browser = Watir::Browser.start url

# Find the form search element by ID
form_search = browser.element id: 'search'

# Find the input element
input = form_search.text_field class: 'txt'

# Fill the input with the search term
input.set 'bolo de cenoura'

# Find the submit button
submit = form_search.element type: 'submit'

# Click in the Submit button
submit.click
