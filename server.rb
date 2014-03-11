require 'pry'
require 'json'
require 'sinatra'
require 'net/http'
require 'shotgun'


# KEY = '25c1fbb49a6d37df8effe86024bf4dfb:3:60737282'
#   source = 'http://api.nytimes.com/svc/search/v2/articlesearch.json?q=new+york+times&page=2&sort=newest&api-key=' + KEY
#   resp = Net::HTTP.get_response(URI.parse(source))
#   data = resp.body
#   @news = JSON.parse(data)
#   binding.pry
#   @articles = []
#   @articles << @news["response"]["docs"].map {|a| a["headline"]["main"]}

get '/' do
  @hash = {"Twitter" => 0.3, "Goldman" => 20, "Bin Laden" => 9, "Movies" => 13}
  erb :index

end

set :views, File.dirname(__FILE__) + '/views'


# array = ["This Week's Movies: March 7, 2014",
#  "Abu Ghaith Urged Qaeda Recruits to 'Pledge' to Bin Laden: Witness",
#  "Arundhati Roy on Gandhi, the Bomb and Being a Woman",
#  "Pictures of the Day: Ukraine and Elsewhere",
#  "Like the Common Core? Then You'll Like the New SAT",
#  "Book on Twitter Feed About Goldman Sachs Canceled",
#  "Star Witness Against Ex-Madoff Aides a Liar, Lawyers Tell Jury",
#  "Can the Calm Last in the Municipal Bond Market?",
#  "Paris Fashion Week Street Style",
#  "Sporting KC Planning to Defend MLS Cup Title"]

