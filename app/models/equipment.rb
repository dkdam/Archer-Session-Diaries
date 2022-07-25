class Equipment < ActiveRecord::Base
    belongs_to :users, :optional => true
end