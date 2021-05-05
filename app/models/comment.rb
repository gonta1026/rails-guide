class Comment < ApplicationRecord
  include Visible
  belongs_to :article
  class << self
    def hoge
      "クラスメソッドのhoge-----!"
    end
  end
end
