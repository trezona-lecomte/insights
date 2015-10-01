class InsightSerializer < ActiveModel::Serializer
  attributes :id, :title, :description, :published_at, :language
end
