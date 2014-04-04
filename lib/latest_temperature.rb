require 'open-uri'

def latest_temperature
  # grab weather document
  doc = Nokogiri::HTML(open("http://www.briansutton.com/wx/weather.html?id=USFL0163&mode=&unit=m&#current"))
  
  # get temperature
  temperature = doc.css('.style2')[1].content
end
