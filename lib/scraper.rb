require 'open-uri'
require 'pry'

class Scraper

  def self.scrape_index_page(index_url)
   index_page = Nokogiri::HTML(open(index_url))
   students = []
   index_page.css("div.roster-cards-container").each do |card|
     card.css(".card-text-container").each do |container|
       student_name = container.css(".student-name").text
       student_location = container.css(".student-location").text
       students << {name: student_name, location: student_location}
     end
   end
   students
 end

#  def self.scrape_index_page(index_url)
#   index_page = Nokogiri::HTML(open(index_url))
#   students = []
#   index_page.css("div.roster-cards-container").each do |card|
#     card.css(".card-text-container").each do |container|
#       student_name = container.css(".student-name").text
#       student_location = container.css(".student-location").text
#       students << {name: student_name, location: student_location}
#     end
#   end
#   students
# end

  def self.scrape_profile_page(profile_url)

  end

end

# In this class you are responsible for defining two methods.

# The #scrape_index_page method is responsible for scraping
# the index page that lists all of the students and the

# #scrape_profile_page method is responsible for scraping an
# individual student's profile page to get further information
# about that student.
