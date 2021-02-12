
User.create( name: "Ori", username: "Ori123", password: "abc123")
User.create( name: "June", username: "June123", password: "abc123")

Attraction.create( name: "Central Park", location: "Central Park, 56th ave", description: "Very relaxing walk in the park", category: "Park", image: "https://media.npr.org/assets/img/2020/10/23/gettyimages-1221103600_wide-2017b49a7088bca4461597719ac0989cf1e027c2-s800-c85.jpg")
Attraction.create( name: "Citi Field", location: "Flushing, NY", description: "Great stadium to see the Mets lose!", category: "Sports stadium", image: "https://populous.com/wp-content/uploads/2018/01/POP_05_2647_00_N197_medium.jpg")
Attraction.create( name: "Cooking with Karen", location: "304 32nd ave, manhattan", description: "Cook with your friends or your family members!", category: "Cooking class", image: "https://www.travelwisconsin.com/uploads/medialibrary/e5/e5584597-ff55-4a52-b7cd-25896497e383-cooking-classes-header.jpg?preset=interior-slider-desktop")
Attraction.create( name: "Museum of Natural History", location: "Upper West Side", description: "Where the dinosaurs and caveman lives", category: "Museum", image: "https://www.amnh.org/var/ezflow_site/storage/images/media/amnh/images/join-and-support/join-support-redesign/plan-your-visit/plan-your-visit-revisions/amnh-plan-your-visit-dino-1024-512/2756409-2-eng-US/amnh-plan-your-visit-dino-1024-512.jpg")
Attraction.create( name: "Ballroom Dancing", location: "Union square park, 14th street", description: "Dance your heart out", category: "Park", image: "https://media.timeout.com/images/103144758/630/472/image.jpg")
Attraction.create( name: "Red Line", location: "LES to UES, manhattan", description: "The most tourist thing to do in NYC", category: "Tour", image: "https://www.nycvb.com/wp-content/uploads/sites/6/2019/01/new-york-sightseeing-gray-line-800x445.jpg")
Attraction.create( name: "MoMA", location: "Midtown", description: "See some of the most beautiful arts in the world!", category: "Museum", image: "https://static01.nyt.com/images/2019/10/18/arts/17moma-exhibits5/17moma-exhibits5-superJumbo.jpg")
Attraction.create( name: "SHHHHHH", location: "Herald Square, 34th street", description: "Silent disco night. Don't you dare talk!", category: "Dancing", image: "https://i.ytimg.com/vi/CSUmopDW1GE/maxresdefault.jpg")
Attraction.create( name: "Rockefeller Center Ice Rink", location: "Rockefellar Center", description: "Everybody who falls down are silently being judge", category: "Ice Skating", image: "https://imgs.6sqft.com/wp-content/uploads/2018/10/05143256/rockefeller-center-skating-rink.png")
Attraction.create( name: "The Spy Museum", location: "405 45th street", description: "Once you go to this musuem, you come out as James Bond", category: "Museum", image: "https://washington.org/sites/default/files/ckeditor-images/decision-room_credit-international-spy-museum.jpg")

Restaurant.create(
    name: "Halal Guys",
    location: "Midtown",
    cuisine: "Middle Eastern",
    category: "lunch",
    image: "https://2prl1w38er123c2qhf3upjct-wpengine.netdna-ssl.com/img/upload/hero-image-1_2.jpg",
    description: "Delicious street food"
)

Restaurant.create(
    name: "Wo Hop",
    location: "Chinatown",
    cuisine: "Chinese",
    category: "lunch",
    image: "http://3.bp.blogspot.com/_UgFsGOCVtcI/TCI1E7c3UFI/AAAAAAAAEjk/4-R6wQDPBxU/s1600/wohop.jpg",
    description: "World famous Chinatown eatery"
)

Restaurant.create(
    name: "City Diner",
    cuisine: "American",
    category: "breakfast",
    location: "Upper West Side",
    image: "https://media-cdn.tripadvisor.com/media/photo-s/05/eb/d7/f1/city-diner.jpg",
    description: "Classic American diner"
)

Restaurant.create(
    name: "JG Melon",
    cuisine: "American",
    category: "dinner",
    location: "West Village",
    image: "https://infatuation.imgix.net/media/reviews/j-g-melon-downtown/banners/JG-Melon-Macdougal-Greenwich-Village_0.jpg?auto=format&fit=max&h=1200&w=3200",
    description: "Premium hamburger"
)

Restaurant.create(
    name: "Wayla",
    location: "East Village",
    cuisine: "Thai",
    category: "dinner",
    image: "https://media.timeout.com/images/105445855/630/472/image.jpg",
    description: "Modern Thai cuisine"
)

Restaurant.create(
    name: "Katz Deli",
    description: "NY's world-famous Jewish Deli",
    category: "lunch",
    cuisine: "Kosher Deli",
    location: "Lower East Side",
    image: "https://media-cdn.tripadvisor.com/media/photo-s/16/42/45/2b/2019-01-18-09-16-16-largejpg.jpg"
)

Restaurant.create(
    name: "H&H Bagels",
    description: "Amazing bagels",
    category: "breakfast",
    cuisine: "Bagels",
    location: "Upper West Side",
    image: "https://static01.nyt.com/images/2009/05/29/nyregion/bagels.480.jpg"
)

Restaurant.create(
    name: "Joe's Pizza",
    description: "NYC style slices",
    category: "lunch",
    cuisine: "Pizza",
    location: "Washington Square",
    image: "https://pyxis.nymag.com/v1/imgs/396/5d8/a3bc3843a3e63556254dbddaae43c2e40d-joes-pizza-01.rsocial.w1200.jpg"
)

Restaurant.create(
    name: "Old Homestead Steakhouse",
    description: "Old-world steakhouse",
    category: "dinner",
    cuisine: "Steak",
    location: "Chelsea",
    image: "https://i.ytimg.com/vi/vf_J5U2KbUs/maxresdefault.jpg"
)

Restaurant.create(
    name: "Nathan's Famous Hot Dogs",
    description: "Coney Island's pride frankfurter",
    category: "lunch",
    cuisine: "Hot Dog",
    location: "Coney Island",
    image: "https://upload.wikimedia.org/wikipedia/commons/4/4a/NathansHotDog-3_%2848034232387%29.jpg"
)

Day.create(
    id: 1,
    user_id: 1
)


DayRestaurant.create(
    day_id: 1,
    restaurant_id: 1
)


DayAttraction.create(
    day_id: 1,
    attraction_id: 1
)