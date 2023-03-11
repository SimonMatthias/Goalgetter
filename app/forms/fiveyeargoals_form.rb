class FiveyeargoalsForm < Reform::Form
  property :vision
  property :title_1, virtual: true
  property :description_1, virtual: true
  property :title_2, virtual: true
  property :description_2, virtual: true
  property :title_3, virtual: true
  property :description_3, virtual: true
end
