body = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. 
        Vestibulum ac erat sapien. Phasellus et sollicitudin turpis, eu malesuada tellus. 
        Suspendisse commodo est eget purus rutrum, nec lobortis odio sollicitudin. 
        Suspendisse nisl lacus, hendrerit quis iaculis at, egestas sit amet nisi. 
        Vestibulum nec malesuada sem. Donec condimentum eleifend metus vitae sodales. 
        Aenean mattis pellentesque tincidunt. Nam in leo diam. Sed feugiat posuere aliquam. 
        In molestie semper fringilla. Nulla et risus eu dui mollis feugiat at ac tortor."
10.times do |blog|
    Blog.create!(
        title: "Blog Post ##{blog}",
        body: body
        )
end

puts "blogs created"

5.times do |skill|
    Skill.create(
        title:"Skill #{skill}",
        percent_utilized:Random.rand(0..100)
        )
end

puts "5 skills created"

9.times do |portfolio_item|
    Portfolio.create!(
        title: "Portfolio # #{portfolio_item}",
        subtitle: "Awesome",
        body: body,
        main_image:"https://placehold.it/600x400",
        thumb_image:"https://placehold.it/350x200"
        )
end