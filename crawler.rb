require 'nokogiri'  
require 'net/http'

class Crawler

  def initialize(link, hop)
     @link = link
     @hop = hop
     @href_array = []
     @i = 0
     @lvl = true
  end

  def page
	uri = URI(@link)
	Net::HTTP.get_response(uri)
  end


 def write
        File.open('link', 'a'){ |file| file.write "#{@href} \n\n\n"}
 end


  def show
   if @i == @hop
     "END"
   else
     if @link != nil
	      doc = Nokogiri::HTML(self.page.body)
	      doc.search('//a').each do |a| 
		@href_array << a["href"]
	      end
     end

     if @lvl == true
                @href = @href_array
                self.write
		@href_array = []
		self.array
      end
    end 

  end



 def array
      @href.each do |l|
	 @link = l
         @lvl = false
         self.show
      end
         @link = nil
         @lvl = true
         @i += 1
         self.show
 end


end


c = Crawler.new("http://web-catalog.org.ua/crawler/start.php", 3)
puts c.show


