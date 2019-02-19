class InputFormsPage

  include PageObject
  include DataMagic

  text_field(:txt_simple_input, id: 'user-message')
  button(:btn_show_msg, text: 'Show Message')
  span( :txt_display, id: 'display')






end