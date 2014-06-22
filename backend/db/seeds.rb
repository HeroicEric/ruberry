rubric_attrs = [
  { name: 'Rescue Mission' },
  { name: 'Lunar Kitchen' },
  { name: 'Kickball' },
  { name: 'Cash Register' }
]

rubric_attrs.each do |attrs|
  Rubric.find_or_create_by!(name: attrs[:name])
end
