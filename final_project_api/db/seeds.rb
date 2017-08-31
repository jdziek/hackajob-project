[User].each do |model|
  ActiveRecord::Base.connection.execute("TRUNCATE #{model.table_name} RESTART IDENTITY CASCADE")
end

User.create!([
  { username: "mickyginger", email: "micky", firstname: "Mike", lastname: "Hayden", password: "password",  },
  { username: "eisacke", email: "eis", firstname: "Emily", lastname: "Isacke", password: "password" },
  { username: "markyjangles", email: "mark", firstname: "Marc", lastname: "De Vois", password: "password" },
  { username: "q", email: "q", firstname: "q", lastname: "q", password: "q" },
  { username: "w", email: "w", firstname: "w", lastname: "w", password: "w" }
])
Item.create!([
  { title: "Cheap gtx 1060 3gb", brand: "Nvidia", super_type: "Hardware", sub_type: "GPU", short_description: "GTX 1060 3gb used 3moths", price: "100$", full_description: "lowesfasdfvqvcfeqwrcqwervqewvcrqewvqcewrvqwverqwverqvwrqwcr vqwcrcqwercq", user_id: "1", location: "Southend", remote_image_url: "http://www.amd.com/PublishingImages/photography/product/375px/amd-radeon-rx-480-graphics-card-product-image-art-background-375.jpg"},
  { title: "Mouse logitech g602", brand: "logitech", super_type: "Accessory", sub_type: "Mouse", short_description: "11111111111rd11111111111rd11111111111rd11111111111rd", price: "$60board", full_description: "e11111111111e11111111111e11111111111e11111111111e11111111111e11111111111", user_id: "2", location: "Glasgow", remote_image_url: "http://gaming.logitech.com/assets/49411/5/g602-gaming-mouse.png"},
  { title: "Monitor", brand: "Hyundai", super_type: "Accessory", sub_type: "Monitor", short_description: "pa22asdsdasdasa2222", price: "$50", full_description: "sligtly beathen 26 inch monitor", user_id: "3", location: "London", remote_image_url: "https://images-na.ssl-images-amazon.com/images/I/51ATILxFwwL._SX300_.jpg"},
  { title: "Vr headseat has some spit on it", brand: "Oculus VR", super_type: "Accessory", sub_type: "VR", short_description: "Oculus VR is an American technology company founded by Palmer Luckey in June 2012 in Irvine, California, now based in Menlo Park. It specializes in virtual ...", price: "$40", full_description: "In April 2012, Luckey announced the Rift, a virtual reality headset designed for video gaming, and launched a Kickstarter campaign in August to make virtual reality headsets available to developers. The campaign proved successful and raised $2.4 Million, ten times the original goal of $250,000. Two pre-production models were released to developers: the Oculus VR DK1 (Development Kit 1) and Oculus VR DK2 (Development Kit 2). The consumer product was released on March 28, 2016 with an all-new design incorporating specialized VR displays, positional audio, and infrared tracking ", user_id: "4", location: "London", remote_image_url: "https://3dprint.com/wp-content/uploads/2016/01/3dp_vtime_Oculus_Rift-1080x675.jpg"},
  { title: "hyperx Fury 8b", brand: "Hyper", super_type: "Hardware", sub_type: "RAM", short_description: "amazing low cost hyper x fur ram", price: "100$", full_description: "HyperX FURY DDR4 memory is 100% tested and optimised for compatibility and easy overclocking. To complete a motherboard featuring 200 Series or X99 chipsets, you need the latest generation of DRAM technology - DDR4 memory.", user_id: "4", location: "Southend", remote_image_url: "http://media.kingston.com/images/products/hx_fury_detail.png"},
  { title: "Amazing graphics card 970i", brand: "nvidia", super_type: "Hardware", sub_type: "GPU", short_description: "barely used watercooling", price: "$220", full_description: "Below is an alphabetical list of all Video Card types that appear in the charts. Clicking on a specific Video Card will take you to the chart it appears in and will highlight it for you.", user_id: "2", location: "Glasgow", remote_image_url: "http://cdn2.techadvisor.co.uk/cmsdata/reviews/3584978/NVIDIA-GeForce-GTX-970-front_thumb.png"},
  { title: "Awesome controller", brand: "Microsoft", super_type: "Accessory", sub_type: "Controller", short_description: "Second hand wireless xb 360 controller", price: "$15", full_description: "Many PC games let you play with an Xbox controller instead of a keyboard or mouse. The Xbox 360 Controller for Windows can be easily installed on any PC that has an available USB port and is running Windows 10, Windows 8.1, Windows 8, or Windows 7.", user_id: "1", location: "London", remote_image_url: "https://images-na.ssl-images-amazon.com/images/I/41gI%2BhvD3TL.jpg"},
  { title: "Monitor", brand: "samsung", super_type: "Accessory", sub_type: "Monitor", short_description: "Awsome samsung screen very few pixels dead, low price", price: "$50", full_description: "sligtly beathen 26 inch monitor that has seen better days hence the price is so  low. For $50 its still a bargain at 28 inch with 120hz", user_id: "4", location: "London", remote_image_url: "http://images.samsung.com/is/image/samsung/uk-pcd-it-PCD_IT_Monitor_02_FeatureBenefit_PC_img_20160825?$ORIGIN_PNG$"},
  { title: "Monitor", brand: "Hyundai", super_type: "Accessory", sub_type: "Monitor", short_description: "pa22asdsdasdasa2222", price: "$50", full_description: "sligtly beathen 26 inch monitor", user_id: "4", location: "London", remote_image_url: "https://images-na.ssl-images-amazon.com/images/I/51ATILxFwwL._SX300_.jpg"},
  { title: "Cheap gtx 1060 3gb", brand: "Nvidia", super_type: "Hardware", sub_type: "GPU", short_description: "GTX 1060 3gb used 3moths", price: "100$", full_description: "lowesfasdfvqvcfeqwrcqwervqewvcrqewvqcewrvqwverqwverqvwrqwcr vqwcrcqwercq", user_id: "1", location: "Southend", remote_image_url: "http://www.amd.com/PublishingImages/photography/product/375px/amd-radeon-rx-480-graphics-card-product-image-art-background-375.jpg"},
  { title: "Mouse logitech g602", brand: "logitech", super_type: "Accessory", sub_type: "Mouse", short_description: "11111111111rd11111111111rd11111111111rd11111111111rd", price: "$60board", full_description: "e11111111111e11111111111e11111111111e11111111111e11111111111e11111111111", user_id: "2", location: "Glasgow", remote_image_url: "http://gaming.logitech.com/assets/49411/5/g602-gaming-mouse.png"},
  { title: "Monitor", brand: "Hyundai", super_type: "Accessory", sub_type: "Monitor", short_description: "pa22asdsdasdasa2222", price: "$50", full_description: "sligtly beathen 26 inch monitor", user_id: "3", location: "London", remote_image_url: "https://images-na.ssl-images-amazon.com/images/I/51ATILxFwwL._SX300_.jpg"},
  { title: "Vr headseat has some spit on it", brand: "Oculus VR", super_type: "Accessory", sub_type: "VR", short_description: "Oculus VR is an American technology company founded by Palmer Luckey in June 2012 in Irvine, California, now based in Menlo Park. It specializes in virtual ...", price: "$40", full_description: "In April 2012, Luckey announced the Rift, a virtual reality headset designed for video gaming, and launched a Kickstarter campaign in August to make virtual reality headsets available to developers. The campaign proved successful and raised $2.4 Million, ten times the original goal of $250,000. Two pre-production models were released to developers: the Oculus VR DK1 (Development Kit 1) and Oculus VR DK2 (Development Kit 2). The consumer product was released on March 28, 2016 with an all-new design incorporating specialized VR displays, positional audio, and infrared tracking ", user_id: "4", location: "London", remote_image_url: "https://3dprint.com/wp-content/uploads/2016/01/3dp_vtime_Oculus_Rift-1080x675.jpg"},
  { title: "hyperx Fury 8b", brand: "Hyper", super_type: "Hardware", sub_type: "RAM", short_description: "amazing low cost hyper x fur ram", price: "100$", full_description: "HyperX FURY DDR4 memory is 100% tested and optimised for compatibility and easy overclocking. To complete a motherboard featuring 200 Series or X99 chipsets, you need the latest generation of DRAM technology - DDR4 memory.", user_id: "4", location: "Southend", remote_image_url: "http://media.kingston.com/images/products/hx_fury_detail.png"},
  { title: "Amazing graphics card 970i", brand: "nvidia", super_type: "Hardware", sub_type: "GPU", short_description: "barely used watercooling", price: "$220", full_description: "Below is an alphabetical list of all Video Card types that appear in the charts. Clicking on a specific Video Card will take you to the chart it appears in and will highlight it for you.", user_id: "2", location: "Glasgow", remote_image_url: "http://cdn2.techadvisor.co.uk/cmsdata/reviews/3584978/NVIDIA-GeForce-GTX-970-front_thumb.png"},
  { title: "Awesome controller", brand: "Microsoft", super_type: "Accessory", sub_type: "Controller", short_description: "Second hand wireless xb 360 controller", price: "$15", full_description: "Many PC games let you play with an Xbox controller instead of a keyboard or mouse. The Xbox 360 Controller for Windows can be easily installed on any PC that has an available USB port and is running Windows 10, Windows 8.1, Windows 8, or Windows 7.", user_id: "1", location: "London", remote_image_url: "https://images-na.ssl-images-amazon.com/images/I/41gI%2BhvD3TL.jpg"},
  { title: "Monitor", brand: "samsung", super_type: "Accessory", sub_type: "Monitor", short_description: "Awsome samsung screen very few pixels dead, low price", price: "$50", full_description: "sligtly beathen 26 inch monitor that has seen better days hence the price is so  low. For $50 its still a bargain at 28 inch with 120hz", user_id: "4", location: "London", remote_image_url: "http://images.samsung.com/is/image/samsung/uk-pcd-it-PCD_IT_Monitor_02_FeatureBenefit_PC_img_20160825?$ORIGIN_PNG$"},
  { title: "MSI mommy", brand: "msi", super_type: "Hardware", sub_type: "Motherboard", short_description: "Awsome motherboard, low price", price: "$50", full_description: "nice big motherboard with plenty of space for up to 128gb of ram", user_id: "4", location: "London", remote_image_url: "https://images10.newegg.com/ProductImage/13-130-918-09.jpg"},
  { title: "MSI mommy", brand: "msi", super_type: "Hardware", sub_type: "Motherboard", short_description: "Awsome motherboard, low price", price: "$50", full_description: "nice big motherboard with plenty of space for up to 128gb of ram", user_id: "4", location: "London", remote_image_url: "https://images10.newegg.com/ProductImage/13-130-918-09.jpg"},
  { title: "Ryzen", brand: "AMD", super_type: "Hardware", sub_type: "CPU", short_description: "Legendary cpu developed by amd", price: "$600", full_description: "nice big motherboard with plenty of space for up to 128gb of ramnice big motherboard with plenty of space for up to 128gb of ram", user_id: "4", location: "London", remote_image_url: "http://s3.amazonaws.com/digitaltrends-uploads-prod/2017/03/AMD-Ryzen-7-1700-CPU-CU.jpg"},
  { title: "Awesome power supply", brand: "Corsair", super_type: "Hardware", sub_type: "Power Supply", short_description: "Awesome power supply", price: "$50", full_description: "Awesome power supplyAwesome power supplyAwesome power supplyAwesome power supplyAwesome power supplyAwesome power supplyAwesome power supplyAwesome power supply", user_id: "4", location: "London", remote_image_url: "http://www.corsair.com/~/media/corsair/product%20photos/psu/ax-series/ax1200i/large/axi_psu_sideview_a.png"},
  { title: "Awesome power supply", brand: "Corsair", super_type: "Hardware", sub_type: "Power Supply", short_description: "Awesome power supply", price: "$50", full_description: "Awesome power supplyAwesome power supplyAwesome power supplyAwesome power supplyAwesome power supplyAwesome power supplyAwesome power supplyAwesome power supply", user_id: "4", location: "London", remote_image_url: "http://www.corsair.com/~/media/corsair/product%20photos/psu/ax-series/ax1200i/large/axi_psu_sideview_a.png"},
  { title: "Awesome power supply", brand: "Logitech", super_type: "Accessory", sub_type: "Keyboard", short_description: "Awesome power supply", price: "$50", full_description: "Awesome power supplyAwesome power supplyAwesome power supplyAwesome power supplyAwesome power supplyAwesome power supplyAwesome power supplyAwesome power supply", user_id: "4", location: "London", remote_image_url: "https://assets.logitech.com/assets/65057/k840-mechanical-pdp.png"},
  { title: "Awesome keyboard", brand: "Logitech", super_type: "Accessory", sub_type: "Keyboard", short_description: "Awesome power supply", price: "$50", full_description: "Awesome power supplyAwesome power supplyAwesome power supplyAwesome power supplyAwesome power supplyAwesome power supplyAwesome power supplyAwesome power supply", user_id: "4", location: "London", remote_image_url: "https://assets.logitech.com/assets/65057/k840-mechanical-pdp.png"},

])

# Conversation.create!([
#   { sender_id: 1, receiver_id: 2, item_id: 1},
#   { sender_id: 2, receiver_id: 3, item_id: 2},
#   { sender_id: 3, receiver_id: 1, item_id: 3},
#   { sender_id: 4, receiver_id: 3, item_id: 2},
#   { sender_id: 3, receiver_id: 4, item_id: 2}
# ])
#
# Message.create!([
#   { body: "asdasdadsad", conversation_id: 1, user_id: 1 },
#   { body: "2222222222", conversation_id: 1, user_id: 2 },
#   { body: "asdasdadsad", conversation_id: 2, user_id: 3 },
#   { body: "333333333", conversation_id: 3, user_id: 1 },
#   { body: "333333333333", conversation_id: 3, user_id: 2} ,
#   { body: "works", conversation_id: 4, user_id: 4 },
#   { body: "works hello", conversation_id: 4, user_id: 2 },
#   { body: "wooorks", conversation_id: 4, user_id: 4 },
#   { body: "one", conversation_id: 5, user_id: 3 },
#   { body: "two", conversation_id: 5, user_id: 4 },
#   { body: "three", conversation_id: 5, user_id: 3 },
#   { body: "woorks", conversation_id: 5, user_id: 4 },
#   { body: "heeya", conversation_id: 5, user_id: 3 },
#   { body: "234234234234", conversation_id: 5, user_id: 4 }
# ])
