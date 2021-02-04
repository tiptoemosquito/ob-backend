class ProductionSerializer < ActiveModel::Serializer 
    attributes :id, :title, :cast, :description, :classic, :theater_id
    belongs_to :theater
end 