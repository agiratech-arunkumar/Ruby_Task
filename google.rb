require 'open-uri'
require 'nokogiri'

class Search_result
def result_info(str)
    page = open "http://www.google.com/search?q=#{str}"
    html = Nokogiri::HTML page

    puts "++++++++++Search results Title++++++++++++","  "
    html.search('div h3 a').each do |link|
      puts link.content,""
    end

    puts "++++++++++Search results URL++++++++++++","  "
    html.search("cite").each do |cite|
      puts cite.inner_text,""
    end

    puts "+++++++++++Search results Description++++++++++++","  "
    html.search('div span').each do |link|
      puts link.content
    end
  end
end

search_result = Search_result.new
print "Enter the string to search and get the url,title and description : "
str = gets.chomp
search_result.result_info(str)