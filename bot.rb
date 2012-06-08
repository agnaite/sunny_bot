#!/usr/bin/env ruby

# require everything in gemfile
require 'bundler'
Bundler.require

require 'open-uri'

bot = Cinch::Bot.new do
	configure do |c|
		c.server = "irc.freenode.org"
		c.channels = ["#heyaudy"]
		c.nick = "agnaite_"
	end
	
	on :message, "agnaite" do |m|
		m.reply "!"
	end
	
	on :message, "!temp" do |m|
		doc = Nokogiri::HTML(open("http://www.briansutton.com/wx/weather.html?id=USFL0163&length=10&unit=s&#current"))
		temperature = doc.css('.style2')[1].content
		m.reply "the temperature in Gainesville, FL is: #{temperature}"
	end
end

bot.start