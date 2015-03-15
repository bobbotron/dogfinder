# app.rb

require 'sinatra'
require 'sinatra/activerecord'
require "sinatra/json"
require './environments'

class Dog < ActiveRecord::Base
    has_many :tracks
end

class Track < ActiveRecord::Base
    belongs_to :dog
end


get "/" do
    json :hello => 'world'
end

get "/dog" do
    json Dog.all
end

get "/dog/:id" do
    @dog = Dog.find(params[:id])
    json @dog
end

get "/dog/:id/track" do
    @dog = Dog.find(params[:id])
    json @dog.tracks
end
