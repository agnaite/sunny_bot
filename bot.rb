#!/usr/bin/env ruby

require './environment.rb'

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
    
    
    # say what the temperature is!
    m.reply "#{m.user} the temperature in Gainesville, FL is: #{latest_temperature}"
  end
end

bot.start
