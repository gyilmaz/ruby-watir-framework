class SeleniumEasyPage
  include PageObject
  include DataMagic

  page_url 'https://www.seleniumeasy.com/test/basic-first-form-demo.html'

  link(:input_forms, text:'Input Forms')
  link(:checkboxes, text:'Checkbox Demo')

end