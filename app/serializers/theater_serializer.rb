class TheaterSerializer < ActiveModel::Serializer
    attributes :id, :name
    has_many :productions
end 