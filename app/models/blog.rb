class Blog < ApplicationRecord
    belongs_to :users, :optional => true
    belongs_to :equipment, :optional => true
end
