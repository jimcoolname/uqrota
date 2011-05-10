#!/usr/bin/ruby

require File.expand_path('../lib/config', __FILE__)
require 'webapi/data'
require 'webapi/user'
require 'sinatra/base'

class RotaApp < Sinatra::Base
  set :views, Rota::ViewsDir
  set :public, Rota::PublicDir
  set :root, Rota::RootDir
  
  set :sessions, true
  
  use DataService
  use LoginService
  use UserService
end

RotaApp.run!