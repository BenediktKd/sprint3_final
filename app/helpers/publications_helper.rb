# frozen_string_literal: true

module PublicationsHelper
  def promedio(id)
    reviews = Publication.find_by(id: id).reviews.pluck(:review)
    @sumatoria = reviews.sum
    @count = reviews.count
    @resultado = begin
      @sumatoria / @count
    rescue StandardError
      0
    end
  end
end
