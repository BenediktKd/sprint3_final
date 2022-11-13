# frozen_string_literal: true

module PublicationsHelper
  def promedio(id)
    @sumatoria = Publication.find_by(id: id).reviews.pluck(:review).sum
    @count = Publication.find_by(id: id).reviews.pluck(:review).count
    @resultado = begin
      @sumatoria / @count
    rescue StandardError
      0
    end
    @resultado
  end
end
