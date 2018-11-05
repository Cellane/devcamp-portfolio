# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

3.times do |i|
  Topic.create!(
    title: "Topic #{i}"
  )
end

10.times do |i|
  Article.create!(
    title: "Article #{i}",
    body: 'Etiam id augue nisi. In hac habitasse platea dictumst. Nunc bibendum in ante non finibus. Nunc sit amet nulla efficitur, tincidunt tortor vitae, convallis odio. Duis sodales mollis sem eget eleifend. Nullam nec lobortis ligula, at efficitur nibh. Curabitur pellentesque diam ac sapien aliquam tincidunt. Fusce purus metus, dictum vitae lacinia nec, dapibus vitae risus. Nam venenatis nisi id nisi luctus, in hendrerit velit laoreet. In hac habitasse platea dictumst. Aenean fermentum quis lacus non scelerisque. In eu odio id augue accumsan pretium.',
    topic_id: Topic.last.id
  )
end

5.times do |i|
  Skill.create!(
    title: "Skill #{i}",
    percent_utilized: i * 10
  )
end

8.times do |i|
  Portfolio.create!(
    title: "Portfolio item #{i}",
    subtitle: 'Ruby on Rails',
    body: 'Vestibulum sagittis libero velit, eu venenatis nisi pretium eu. Curabitur tempus, eros id volutpat blandit, ante risus posuere tortor, vitae pretium turpis ligula nec orci. Quisque condimentum id nisl eu lobortis. Nam dui augue, finibus sit amet elementum quis, tincidunt vitae purus. Etiam vitae iaculis odio. Quisque risus ligula, pharetra vitae tellus finibus, luctus fermentum nisi. Etiam porttitor sagittis quam.',
    main_image: 'https://placem.at/people?w=600&h=400',
    thumb_image: 'https://placem.at/people?w=350&h=200'
  )
end

Portfolio.create!(
  title: "Portfolio item 9",
  subtitle: 'Spring Boot',
  body: 'Vestibulum sagittis libero velit, eu venenatis nisi pretium eu. Curabitur tempus, eros id volutpat blandit, ante risus posuere tortor, vitae pretium turpis ligula nec orci. Quisque condimentum id nisl eu lobortis. Nam dui augue, finibus sit amet elementum quis, tincidunt vitae purus. Etiam vitae iaculis odio. Quisque risus ligula, pharetra vitae tellus finibus, luctus fermentum nisi. Etiam porttitor sagittis quam.',
  main_image: 'https://placem.at/people?w=600&h=400',
  thumb_image: 'https://placem.at/people?w=350&h=200'
)

