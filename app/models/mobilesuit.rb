class Mobilesuit
  include Mongoid::Document
  include Mongoid::Timestamps
  field :model, type: String
  field :name, type: String
  field :height, type: Float
  field :weight, type: Float
end
