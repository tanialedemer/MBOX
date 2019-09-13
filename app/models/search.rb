class Search
 def initialize(page, page_size, keywords)
  @page = page
  @page_size = page_size
  @offset = page_size * page
  @keywords = keywords
 end


 def vehiculos_by_matricula
  if @keywords.present?
   vehiculos = Vehiculo.where(name_condition).order(:matricula).offset(@offset).limit(@page_size)
   @number_of_records = Vehiculo.where(name_condition).count
  else
   vehiculos = Vehiculo.order(:matricula).offset(@offset).limit(@page_size)
   @number_of_records = Vehiculo.count
  end

  return vehiculos, number_of_pages
 end

 private

 def name_condition
  name_condition = "unaccent(lower(matricula)) LIKE '%#{I18n.transliterate(@keywords.downcase)}%'"
 end

 def number_of_pages
  number_of_pages = (@number_of_records % @page_size) == 0 ?
  @number_of_records / @page_size - 1 : @number_of_records / @page_size
 end
end
