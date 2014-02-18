class Article < ActiveRecord::Base
    attr_accessible :title, :content, :category_id, :active

    belongs_to :categories

    validates_presence_of :title, :content
    scope :alphabetical, order('title')
    scope :active, where('active = ?', true)

end
