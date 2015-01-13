require 'json'
require 'pry'
require_relative 'gilt'

KEY => ENV['GILT_KEY']


gilt = Gilt.new(KEY);

results = gilt.search('men');

puts gilt.pull_title

puts gilt.pull_pic


puts results
pry.binding