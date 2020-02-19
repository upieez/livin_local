
#################################### TAGS ####################################

outdoor = Tag.create(:name => "outdoor")
beach = Tag.create(:name => "beach")
nature = Tag.create(:name => "nature")
park = Tag.create(:name => "park")
kid_friendly = Tag.create(:name => "kid friendly")
pet_friendly = Tag.create(:name => "pet friendly")
photography = Tag.create(:name => "photography")
old_school = Tag.create(:name => "old school")
vintage = Tag.create(:name => "vintage")
cafe = Tag.create(:name => "cafe")



#################################### USERS AND ADMIN ####################################

ann = User.create(:email => "ann@gmail.com", :password => "password321", :username => "Ann", :admin => false)
ben = User.create(:email => "ben@gmail.com", :password => "password123", :username => "Ben", :admin => false)
cara = User.create(:email => "clara@gmail.com", :password => "password098", :username => "Cara", :admin => false)
don = User.create(:email => "don@gmail.com", :password => "password890", :username => "Don", :admin => false)
erin = User.create(:email => "erin@gmail.com", :password => "password", :username => "Erin", :admin => false)
sam = User.create(:email => "sam@gmail.com", :password => "password999", :username => "Sam", :admin => true)
angel = User.create(:email => "angel@gmail.com", :password => "password888", :username => "Angel", :admin => true)
hwee = User.create(:email => "hweechieh@gmail.com", :password => "password777", :username => "Hweechieh", :admin => true)



#################################### PLACES ####################################

hawpar_villa = Place.create(:name => "Haw Par Villa", :description => "Haw Par Villa (Chinese: 虎豹別墅; pinyin: Hǔ Bào Biéshù) is a theme park located along Pasir Panjang Road in Singapore. The park contains over 1,000 statues and 150 giant dioramas depicting scenes from Chinese mythology, folklore, legends, history, and illustrations of various aspects of Confucianism.", :img_url => "https://media.timeout.com/images/103787766/630/472/image.jpg", :address => "262 Pasir Panjang Rd, Singapore 118628", :user_id => 1)


lorong_buangkok = Place.create(:name => "Lorong Buangkok Kampong", :description => "Kampong Lorong Buangkok is a village located in Buangkok in Hougang, Singapore. Built in 1956, it is the last surviving kampong located on Singapore Island in the 21st century. A wide canal ran alongside the kampong, which links to Sungei Punggol that drains into the eastern Straits of Johor.", :img_url => "https://upload.wikimedia.org/wikipedia/commons/2/2e/The_Winding_Lanes_of_KB.JPG", :address => "Buangkok in Hougang", :user_id => 2)


pulau_ubin = Place.create(:name => "Pulau Ubin", :description => "Pulau means 'island', and Ubin is said to be a Javanese term for 'squared stone'. To the Malays, the island is also known as Pulau Batu Ubin, or 'Granite Stone Island'. The rocks on the island were used to make floor tiles in the past and were called Jubin, which was then shortened to Ubin.", :img_url => "https://lonelyplanetimages.imgix.net/a/g/hi/t/9911da3333065d1261ac78d69499f9d3-pulau-ubin.jpg", :address => "Northeast Region", :user_id => 3)


punggol_busstop = Place.create(:name => "Old Bus Stop at Punggol", :description => "This nostalgic sight is conserved by the National Parks Board. Buses no longer stop here, but it remains as a cool rest stop that is perfect for photos! This is a short walk away from Punggol Road, near the centre portion of the Waterway. If you love heritage trails, take a look at the Punggol Discovery Route!", :img_url => "https://mynicehome.sg/cs/Satellite?blobcol=urldata&blobkey=id&blobtable=MungoBlobs&blobwhere=1383607934471&ssbinary=true", :address => "Old Punggol Road", :user_id => 4)


sultan_arts_village = Place.create(:name => "Sultan Arts Village", :description => "Nestled along the quaint Malay enclave of Kampong Glam, specifically between Aliwal Arts Centre and the Malay Heritage Centre, is the Sultan Arts Village where you’ll find fascinating street art and graffiti by both local and international artists. Explore graffiti shop, The Black Book, as well as its practice walls for new sprays and tags. We also recommend walking down and checking out the wall behind the Aliwal Arts Centre every now and then to find jaw-dropping wall art that’s ever-changing!", :img_url => "https://d22ir9aoo7cbf6.cloudfront.net/wp-content/uploads/sites/2/2017/12/Bras-Basah.jpg", :address => "Sultan Arts Village, 71 Sultan Gate, Singapore 198496", :user_id => 5)


 chin_mee_chin= Place.create(:name => "Chin Mee Chin Coffee & Cake Shop", :description => "Chin Mee Chin Confectionery, located at 204 East Coast Road, is a landmark kopitiam (Hokkien for coffee shop) in Katong. It is popular for its kaya, a type of custard jam. A contemporary of Hock Ann Coffeeshop and the Red House Bakery, the confectionery delights the residents of the east with its traditional breakfast.", :img_url => "https://www.hawkerfood.com/wp-content/uploads/2017/09/chin_mee_chin_shop1.jpg", :address => "204 East Coast Rd, Singapore 428903", :user_id => 6)


colbar = Place.create(:name => "Colbar: The Colonial Bar at Whitchurch Road", :description => "Colbar. This old-school eatery was once an army mess hall for British troops, hence its name (short for colonial bar). It serves up a slew of affordable Western dishes—think chicken chop, fish and chips, and milkshakes, just to name a few. The rustic, nostalgic charm of the place will make you want to return.", :img_url => "https://thelionraw.files.wordpress.com/2013/02/img_7769.jpg", :address => "9A Whitchurch Rd, Singapore 138839", :user_id => 7)


gillman_barracks = Place.create(:name => "DISINI Outdoor Artworks", :description => "DISINI is an inaugural visual arts festival consisting of a series of events, art exhibitions and public engagements. Spurred by its locale, DISINI borrows its name from the Malay adverb ‘di sini’, meaning ‘over here’ and celebrates the precinct’s rich heritage as a former military barracks as well as its current role as Asia’s leading contemporary arts cluster. The festival showcases the first, second and third wave of outdoor artworks by 10 international, regional and homegrown artists. Featuring works by Dawn Ng (Singapore), Nabilah Nordin (Singapore/Australia), Orkibal (Malaysia), Anon Pairot (Thailand), Felipe Pantone (Argentina/Spain), Maya Rochat (Switzerland), Lugas Syllabus (Indonesia), Kamin Lertchaiprasert (Thailand), Albert Yonathan Setyawan (Indonesia) and Richard Streitmatter-Tran (Vietnam), expect to be captivated by the DISINI Outdoor Artworks.", :img_url => "https://www.gillmanbarracks.com/files/page/fullsize/1810090349f27c5cfd5e5845269c520300142c398d.jpg", :address => "9 Lock Rd, Singapore 108937", :user_id => 8)


kombi_rocks = Place.create(:name => "Kombi Rocks Diner", :description => "Kombi Rocks takes the legacy and the dishes of the iconic Teochew-Thai restaurant, Koon Kee, and revitalises it for thriving the cafe scene today. Named after the Kombi (the Volkswagen Type 2 microbus or the ‘hippie van’), the diner maintains the quality of food while giving an unexpected twist to the place, with the amount of Kombis lining up the street. For delicious food that differs from the usual cafe fare, you cannot go wrong with Kombi Rocks. Plus, if you’ve fallen in love with their iconic vans, you can even rent one of them out for events or wedding photoshoots!", :img_url => "https://www.misstamchiak.com/wp-content/uploads/2013/11/IMG_8091-1300x867.jpg", :address => "66 Yio Chu Kang Road, Singapore 545568", :user_id => 1)


bicycle_cafe = Place.create(:name => "Soek Seng 1954 Bicycle Cafe", :description => "Did you know, other than Changi Airport, there are plenty of other airspaces around? And, no, Old Airport Road does not count. At Soek Seng, relax and eat amongst the many vintage bikes curated and collected by the owner, a bike enthusiast, and watch as planes take off in the distance. Cycling enthusiasts will feel themselves in heaven, surrounded by carefully restored bikes that provide the perfect ambience to an already beautiful location.", :img_url => "https://media-cdn.tripadvisor.com/media/photo-s/0e/9a/79/8e/photo0jpg.jpg", :address => "#01-01 MAJ Aviation Building, Seletar Aerospace View, Singapore 797563", :user_id => 2)


 brunches_cafe= Place.create(:name => "Brunches Cafe", :description => "At this cafe that doubles up as a furniture shop, you might just find yourself leaving with a happy tummy and a vintage collectible to boot. Chill on their Mini Cooper sofa set while enjoying a relaxing meal with your friends, chowing down on their all-day breakfast with hits like their Pimp My Brekkie (that allows for a customisable Big Breakfast experience) or the pancake stack that will surely satisfy. When you’re done, find yourself exploring every little corner that’s packed with toys and collectibles that will certainly bring back memories.", :img_url => "https://qul.imgix.net/df4ce4f0-732f-42d5-9a96-db4424ba6ecc/150600_landscape.jpg", :address => "96 Rangoon Road, Singapore 218381", :user_id => 3)


knots_cafe = Place.create(:name => "Knots Cafe & Living", :description => "Knots Living is a one stop furniture showroom where everything there is for sale, including the table we were sitting at for our meals. Of course, at a discounted rate. The café is located within the greens and the woods, serving as a rest point for the shoppers.", :img_url => "https://media.thefinder.com.sg/2018/03/knots-cafe-and-living_2.jpg", :address => "#01-07, 160 Paya Lebar Rd, Singapore 409022", :user_id => 4)


omnitheatre = Place.create(:name => "Omni Theatre in Science Centre", :description => "The Omni-Theatre is Southeast Asia’s first 8K 3D digital dome theatre. Coupled with Southeast Asia’s largest seamless dome screen (23m in diameter), it is an immersive edutainment destination like no other. Unlike conventional theatres, the Omni-Theatre is equipped with a powerful digital planetarium system which allows visitors to peer into space at 8K resolution and travel through time at light speed! The 221-seat theatre offers a range of digital movies and live planetarium shows (conducted by science educators). Embark on an experiential journey to remote locations on Earth and in space.", :img_url => "https://www.straitstimes.com/sites/default/files/articles/2015/05/26/PLANET4150526e_2x.jpg", :address => "15 Science Centre Rd, Singapore 609081", :user_id => 5)


hot_spring = Place.create(:name => "Sembawang Hot Spring Park", :description => "The Sembawang Hot Spring Park is a natural hot spring and a public park in Singapore.[1] It is located beside a military camp about 100 metres (330 ft) off the main road. Like hot springs worldwide, it can have health healing properties with proper use in moderation, and its natural spring water had once been bottled commercially by Fraser and Neave, under the brand name of Seletaris. Since its discovery in 1909, the spring has been through a few changes of ownership and potential redevelopment proposals. The hot spring has a rural rustic feel for visitors to unwind from the hustle and bustle of the modern metropolitan city. The National Parks Board took over the ownership of the park for redevelopment, which officially reopened on 4 January 2020.", :img_url => "https://www.nparks.gov.sg/-/media/nparks-real-content/gardens-parks-and-nature/parks-and-nature-reserve/sembawang-hot-spring/shsp-main-gallery-02.jpg", :address => "Gambas Avenue", :user_id => 6)


sungei_buloh = Place.create(:name => "Sungei Buloh Wetland Reserve", :description => "The wetlands of Sungei Buloh are a dream come true for keen nature lovers. At this sprawling 87-hectare ecological site, you can catch migratory birds escaping the cold on their way to the warmer climes of Australia–with some having come as far away as Siberia.", :img_url => "https://farm8.staticflickr.com/7623/17251080012_53674fc082_h.jpg", :address => "301 Neo Tiew Cres, Singapore 718925", :user_id => 7)


bird_singing_club = Place.create(:name => "Kebun Baru Birdsinging Club", :description => "The Kebun Baru Birdsinging Club is the largest bird singing and display arena in Singapore, and one of the biggest in Southeast Asia. Every morning from as early as 6 a.m., owners bring their prized possessions to enjoy a bit of sunshine and breeze. While the feathereds nibble on seeds and swap the latest gossip, their earthbound human friends do their own share of chatting, eating and smoking. They also hold bird-singing competitions, between the merboks, shama, mata puteh and jambul.", :img_url => "https://coconuts.co/wp-content/uploads/2018/02/SG_Bird_Julien_Canon-1472x1472.jpg", :address => "Ang Mo Kio Avenue 5, Block 159, 560159, 560159", :user_id => 8)


rocket_tower = Place.create(:name => "Seletar Rocket Tower", :description => "Blast off for an inter-galactic quest and explore space – the final frontier – at Upper Seletar Reservoir Park and its rocket tower. Space-crazy kids will be starry-eyed over this “space-age rocket” beside the tranquil waters of the Upper Seletar Reservoir, where the zenith soars into the sky and offers beautiful views of nature. Guardians of the galaxy, stand by to commandeer this space shuttle!", :img_url => "https://live.staticflickr.com/782/32709368711_ed4f907aeb_b.jpg", :address => "Upper Seletar Reservoir Park, 100 Yishun Avenue 1S, Seletar Reservoir Park, Singapore 769140", :user_id => 1)


summerhouse = Place.create(:name => "The Summerhouse", :description => "A romantic enclave tucked away in the Seletar countryside, The Summerhouse serves up nature-inspired, farm-to-table cuisine designed for communal sharing. They connect with a farming collective of Singaporean and Malaysian growers, producers, and kelong, bringing a carefully curated range of foodstuffs of unrivalled freshness and provenance to the table. A newly introduced dining concept is The Summerhouse Garden Domes: three climate-controlled (air-conditioned) structures with their own music sound system set within the lush edible garden.", :img_url => "https://m.buro247.sg/images/lifestyle/the-summerhouse-garden-dome-ca-buro247-sg.jpg", :address => "3 Park Lane, Singapore 798387", :user_id => 2)


aeroplane_chess = Place.create(:name => "Life-Size Aeroplane Chess", :description => "Most of us would be familiar with the Aeroplane Chess we played as a kid – desperately trying to get our planes to the centre of the board before anyone else. #Throwback to those days with this life sized version, where you are the game piece. Instead of dice, spin the rocket in the centre to see how many steps you advance. A few rounds around the game board should be enough work up your appetite for lunch later on.", :img_url => "https://thesmartlocal.com/images/easyblog_articles/6333/b2ap3_large_image12.jpg", :address => "The Oval @ Seletar Aerospace Park Zone D, Number 1", :user_id => 3)


orchard_library= Place.create(:name => "Orchard Library Interior Design", :description => "The curved bookshelves, the buffed bamboo floor and the bespoke reading cocoons. With everything vertical in neutral and white, it allows the library to give prominence to the books and magazines. In contrast, the horizontal floors and ceilings are in warm, brown tones.", :img_url => "https://www.todayonline.com/sites/default/files/styles/new_app_article_detail/public/20510199.JPG?itok=smMu7s0D", :address => "277 Orchard Road, Orchard Gateway, #03-12/#04-11, 238858", :user_id => 4)



