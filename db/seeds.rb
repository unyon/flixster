# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Lesson.destroy_all
Section.destroy_all
Course.destroy_all

def seed_image(file_name)
  File.open(File.join(Rails.root, "/app/assets/images/#{file_name}.jpg"))
end
def seed_video(file_name)
  File.open(File.join(Rails.root, "/app/assets/images/#{file_name}.mp4"))
end
#Course 1 Guitar
course = Course.create(title: 'Guitar', description: 'Play guitar solos in 4 weeks!', cost: 50, image: seed_image('guitar'))
course.save!
section = course.sections.create(title: "Week 1")
section.save!
section.lessons.create(title: "Lesson 1", subtitle: "Intro, set up, and tuning", video: seed_video('small'))
section.lessons.create(title: "Lesson 2", subtitle: "Major scales and open chords", video: seed_video('small'))
section = course.sections.create(title: "Week 2")
section.save!
section.lessons.create(title: "Lesson 3", subtitle: "Arpeggios", video: seed_video('small'))
section.lessons.create(title: "Lesson 4", subtitle: "Barre chords", video: seed_video('small'))
section = course.sections.create(title: "Week 3")
section.save!
section.lessons.create(title: "Lesson 5", subtitle: "Moving up the neck", video: seed_video('small'))
section.lessons.create(title: "Lesson 6", subtitle: "Pentatonic Minor scales", video: seed_video('small'))
section = course.sections.create(title: "Week 4")
section.save!
section.lessons.create(title: "Lesson 7", subtitle: "Soloing in Am", video: seed_video('small'))
section.lessons.create(title: "Lesson 8", subtitle: "Improvising", video: seed_video('small'))
#Course 2 Piano
course = Course.create(title: 'Piano', description: 'Learn piano in 4 weeks!', cost: 50, image: seed_image('piano'))
course.save!
section = course.sections.create(title: "Week 1")
section.save!
section.lessons.create(title: "Lesson 1", subtitle: "The Keyboard and Treble Clef", video: seed_video('small'))
section.lessons.create(title: "Lesson 2", subtitle: "Bass Clef", video: seed_video('small'))
section = course.sections.create(title: "Week 2")
section.save!
section.lessons.create(title: "Lesson 3", subtitle: "Major Scales; The Circle of Fifths", video: seed_video('small'))
section.lessons.create(title: "Lesson 4", subtitle: "Major Key Signatures", video: seed_video('small'))
section = course.sections.create(title: "Week 3")
section.save!
section.lessons.create(title: "Lesson 5", subtitle: "Intervals", video: seed_video('small'))
section.lessons.create(title: "Lesson 6", subtitle: "Triads", video: seed_video('small'))
section = course.sections.create(title: "Week 4")
section.save!
section.lessons.create(title: "Lesson 7", subtitle: "Chord Progressions", video: seed_video('small'))
section.lessons.create(title: "Lesson 8", subtitle: "Arpeggios and rhythm", video: seed_video('small'))
#Course 3 Basketball
course = Course.create(title: 'Basketball', description: 'Learn basketball fundamentals in 4 weeks!', cost: 50, image: seed_image('basketball'))
course.save!
section = course.sections.create(title: "Week 1")
section.save!
section.lessons.create(title: "Lesson 1", subtitle: "Dribbling", video: seed_video('small'))
section.lessons.create(title: "Lesson 2", subtitle: "Shooting and lay ups", video: seed_video('small'))
section = course.sections.create(title: "Week 2")
section.save!
section.lessons.create(title: "Lesson 3", subtitle: "Passing", video: seed_video('small'))
section.lessons.create(title: "Lesson 4", subtitle: "Foot work", video: seed_video('small'))
section = course.sections.create(title: "Week 3")
section.save!
section.lessons.create(title: "Lesson 5", subtitle: "Post play", video: seed_video('small'))
section.lessons.create(title: "Lesson 6", subtitle: "Rebounding and blocking out", video: seed_video('small'))
section = course.sections.create(title: "Week 4")
section.save!
section.lessons.create(title: "Lesson 7", subtitle: "Defense", video: seed_video('small'))
section.lessons.create(title: "Lesson 8", subtitle: "Increase shooting range", video: seed_video('small'))
#Course 4 HTML and CSS
course = Course.create(title: 'Intro to Web Design', description: 'Build your own website 4 weeks!', cost: 50, image: seed_image('htmlcss'))
course.save!
section = course.sections.create(title: "Week 1")
section.save!
section.lessons.create(title: "Lesson 1", subtitle: "Intro to Web Design", video: seed_video('small'))
section.lessons.create(title: "Lesson 2", subtitle: "Basics of Web Design", video: seed_video('small'))
section = course.sections.create(title: "Week 2")
section.save!
section.lessons.create(title: "Lesson 3", subtitle: "Intro to HTML", video: seed_video('small'))
section.lessons.create(title: "Lesson 4", subtitle: "HTML Elements", video: seed_video('small'))
section = course.sections.create(title: "Week 3")
section.save!
section.lessons.create(title: "Lesson 5", subtitle: "Intro to CSS", video: seed_video('small'))
section.lessons.create(title: "Lesson 6", subtitle: "CSS Elements", video: seed_video('small'))
section = course.sections.create(title: "Week 4")
section.save!
section.lessons.create(title: "Lesson 7", subtitle: "Putting it all together", video: seed_video('small'))
section.lessons.create(title: "Lesson 8", subtitle: "Hosting your site", video: seed_video('small'))
#Course 2 Javascript
course = Course.create(title: 'JavaScript', description: 'Learn basic JavaScript in 4 weeks!', cost: 50, image: seed_image('javascript'))
course.save!
section = course.sections.create(title: "Week 1")
section.save!
section.lessons.create(title: "Lesson 1", subtitle: "Intro to Javascript", video: seed_video('small'))
section.lessons.create(title: "Lesson 2", subtitle: "Basics of JavaScript", video: seed_video('small'))
section = course.sections.create(title: "Week 2")
section.save!
section.lessons.create(title: "Lesson 3", subtitle: "The Document Object Model", video: seed_video('small'))
section.lessons.create(title: "Lesson 4", subtitle: "DOM Manipulation", video: seed_video('small'))
section = course.sections.create(title: "Week 3")
section.save!
section.lessons.create(title: "Lesson 5", subtitle: "Arrays and Loops", video: seed_video('small'))
section.lessons.create(title: "Lesson 6", subtitle: "Transition effects", video: seed_video('small'))
section = course.sections.create(title: "Week 4")
section.save!
section.lessons.create(title: "Lesson 7", subtitle: "User Interaction", video: seed_video('small'))
section.lessons.create(title: "Lesson 8", subtitle: "jQuery and plugins", video: seed_video('small'))
#Course 6 Ruby on Rails
course = Course.create(title: 'Ruby on Rails', description: 'Build a site with Ruby on Rails 4 weeks!', cost: 50, image: seed_image('rails'))
course.save!
section = course.sections.create(title: "Week 1")
section.save!
section.lessons.create(title: "Lesson 1", subtitle: "Introduction to Ruby", video: seed_video('small'))
section.lessons.create(title: "Lesson 2", subtitle: "Understanding the framework", video: seed_video('small'))
section = course.sections.create(title: "Week 2")
section.save!
section.lessons.create(title: "Lesson 3", subtitle: "Variables and methods", video: seed_video('small'))
section.lessons.create(title: "Lesson 4", subtitle: "Loops, arrays, and hashes", video: seed_video('small'))
section = course.sections.create(title: "Week 3")
section.save!
section.lessons.create(title: "Lesson 5", subtitle: "Classes and object oriented programming", video: seed_video('small'))
section.lessons.create(title: "Lesson 6", subtitle: "MVC", video: seed_video('small'))
section = course.sections.create(title: "Week 4")
section.save!
section.lessons.create(title: "Lesson 7", subtitle: "Tests and validations", video: seed_video('small'))
section.lessons.create(title: "Lesson 8", subtitle: "Finishing up the site", video: seed_video('small'))