def gen_paragraph
    result=""
    Faker::Lorem.paragraphs(10, true).each do |p|
        result+="\n#{p}"
    end
    result
end

3.times do 
    Topic.create!(title: Faker::ProgrammingLanguage.name)
end
puts 'Topics created'
10.times do
    Topic.find(Random.rand(1..Topic.count))
    .blogs.create!(
        title: Faker::Space.agency, 
        body: gen_paragraph
        )
end
puts 'Blogs created'



5.times do
    Skill.create(
        title: Faker::ProgrammingLanguage.name,
        percent_utilized: Random.rand(0..100)
        )
end

puts "5 skills created"

9.times do |portfolio_item|
    Portfolio.create!(
        title: Faker::Vehicle.manufacture,
        subtitle: "#{Faker::Vehicle.fuel_type}, #{Faker::Vehicle.transmission}",
        body: gen_paragraph,
        main_image:"https://placehold.it/600x400",
        thumb_image:"https://placehold.it/350x200"
        )
end

3.times do
    Portfolio.last.technologies.create!(name: Faker::Vehicle.engine_size)
end

puts 'portfolio items and technologies created'

