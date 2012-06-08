#!/usr/bin/env ruby

# require everything in gemfile
require 'bundler'
Bundler.require

require 'open-uri'

bot = Cinch::Bot.new do
	configure do |c|
		c.server   = "irc.freenode.org"
		c.channels = ["#heyaudy"]
		c.nick     = "sunny_bot"
	end
	
	on :message, "agnaite" do |m|
		m.reply "!"
	end
	
	on :message, "!temp" do |m|
		
		# grab weather document
		doc = Nokogiri::HTML(open("http://www.briansutton.com/wx/weather.html?id=USFL0163&mode=&unit=m&#current"))
		
		# get temperature
		temperature = doc.css('.style2')[1].content
		
		# say what the temperature is!
		m.reply "#{m.user} the temperature in Gainesville, FL is: #{temperature}"
	end
end

bot.start