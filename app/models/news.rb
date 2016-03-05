require 'elasticsearch/model'

class News < ActiveRecord::Base
  include Elasticsearch::Model

  mapping do
    indexes :name
    #indexes :content
  end
end
