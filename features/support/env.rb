require 'rspec'
require 'page-object'
require 'fig_newton'
require 'require_all'
require_all 'lib'
World(PageObject::PageFactory)
World(DataMagic)