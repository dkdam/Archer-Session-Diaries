class Equipment < ActiveRecord::Base
    belongs_to :users, :optional => true
    has_many :blogs
end