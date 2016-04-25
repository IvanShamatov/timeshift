FactoryGirl.define do 
  factory :event do 
    id 1
    title 'Ruby on Rails meetup'
    short_description ("Многие из нас изучают язык более 14 лет, но в итоге по-английски
      говорят лишь единицы. Почему так происходит? Ведь некоторые свободно говорят
      уже после года обучения. Причем говорить они начинают с 1-ого месяца! Но как
      они учат язык?")
    full_description ("Начните говорить на английском уже за 1 месяц с помощью методики
      ESL\r\n\r\n89% людей учат язык в школе, в институте и на\r\nкурсах, но говорить
      по-английски они так и не могут.\r\n\r\nПриходите на бесплатный урок в Москве\r\nи
      узнайте, как начать говорить на английском\r\nза 1 месяц по методу ESL.")
    starts_at Faker::Date.forward(23)
    ends_at Faker::Date.forward(24)
    header_image 'post-bg.jpg'
    headline "Coding is fun!"
    # company_id: 1
  end
end