class Course < ActiveRecord::Base

	belongs_to :user
	has_many :sections
	has_many :enrollments

	mount_uploader :image, ImageUploader

	validates :title, presence: true
	validates :description, presence: true
	validates :cost, presence: true, numericality: {greater_than_or_equal_to: 0}

	  # It returns the courses whose titles contain one or more words that form the query
def self.search(search)
	  	if search
    	where('title iLIKE ?', "%#{search}%") || where('description iLIKE ?', "%#{search}%")

    	#where('title iLIKE ?' OR 'description iLIKE ?', "%#{search}%", "%#{search}%") #iLike SQL case insensitive
		#elsif search.empty?
		#	redirect_to courses_path(course)
		else	
			all
		end
end

def free?
	cost.zero?
end

def premium?
	! free?
end


end
