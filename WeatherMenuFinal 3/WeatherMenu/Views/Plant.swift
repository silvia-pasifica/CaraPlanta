//
//  Plant.swift
//  PlantNano1
//
//  Created by Silvia Pasica on 22/03/23.
//

import SwiftUI

struct Plant: Identifiable {
    let id = UUID()
    let name: String
    let latinName: String
    let level: String
    let levelColor: Color
    let imageName: String
    let description: String
    let sun: String
    let temperature: String
    let water: String
    let harvestTime: String
    let soil:String
    let pest: String
    let love: String
}

struct PlantList {
    
    static let seed = [
        Plant(
            name: "Celery",
            latinName: "Apium graveolens",
            level: "Moderate",
            levelColor: Color(red: 0.871, green: 0.567, blue: 0.292),
            imageName: "Celery",
            description: "Celery is a biennial plant that is commonly cultivated as an annual vegetable for its edible stalks, leaves, and seeds. The plant has a long, fibrous stalk with segmented leaves, and it can grow up to 1 meter tall.\n\nIt is a popular vegetable for salads, soups, stews, and other dishes, and it is also used as a natural remedy for various health conditions, such as high blood pressure and inflammation.",
            sun: "6hr/day",
            temperature: "15-23°C",
            water: "3x/week",
            harvestTime: "Planting+ 120-180D",
            soil: "Moist+organic matter",
            pest: "Aphids, Slugs and snails, Cutworm, Leafminers,Celery leaf-tier",
            love: "1x/2 weeks"),
        
        Plant(
            name: "Spinach",
            latinName: "Amaranthus spp",
            level: "Easy",
            levelColor: Color(red: 0.255, green: 0.767, blue: 0.476),
            imageName: "Spinach",
            description: "Spinach is a leafy green vegetable that is a member of the Amaranthaceae family. It is native to central and southwestern Asia and is widely grown and consumed around the world.\n\nThis nutrient-dense vegetable is high in vitamins A, C, and K, as well as iron, calcium, and other minerals. It is also low in calories and high in fiber, making it a great choice for those looking to maintain a healthy diet.",
            sun: "6hr/day",
            temperature: "15.5°C",
            water: "1x/week",
            harvestTime: " Planting+ 25-30D",
            soil: "Well-drained+organic matter",
            pest: "Aphids, spider mites, and powdery mildew",
            love: "1x/ 4 weeks"),
        
        Plant(
            name: "Chili",
            latinName: "Capsicum annum. L",
            level: "Moderate",
            levelColor: Color(red: 0.871, green: 0.567, blue: 0.292),
            imageName: "Chilli",
            description: "Chili is a member of the nightshade family, with tomatoes, potatoes, and eggplants. The fruits of the chili plant come in various shapes, sizes, colors, and levels of spiciness, from mild to extremely hot.\n\nChilies are often used in cooking for their unique flavor and heat, and they also have potential health benefits: boosting metabolism and reducing inflammation.",
            sun: "6hr/day",
            temperature: "18-30°C",
            water: "2-3x/week",
            harvestTime: "Planting+ 30-45D",
            soil: "Well-drained+organic matter",
            pest: "Aphids, Spider mites, Whiteflies, Thrips",
            love: "1x/ 2 weeks"),
        
        Plant(
            name: "Kemangi (Thai Basil)",
            latinName: "Ocimum basilicum var. citratum",
            level: "Moderate",
            levelColor: Color(red: 0.871, green: 0.567, blue: 0.292),
            imageName: "Basil",
            description: "Kemangi is a popular culinary herb that is commonly used in Southeast Asian cuisine. It is a member of the mint family and is characterized by its sweet and slightly spicy flavor, as well as its distinct aroma.\n\n In addition to its culinary uses, kemangi is also known for its medicinal properties. It has been used traditionally in herbal medicine to treat a variety of ailments, including coughs, colds, and digestive issues.",
            sun: "6hr/day",
            temperature: "18-30°C",
            water: "2-3x/week",
            harvestTime: "Planting+ 30-45D",
            soil: "Well-drained+organic matter",
            pest: "Aphids, Spider mites, Whiteflies, Thrips.",
            love: "1x/ 2 weeks"),
        
        Plant(
            name: "Lettuce",
            latinName: "Lactuca sativa",
            level: "Easy",
            levelColor: Color(red: 0.255, green: 0.767, blue: 0.476),
            imageName: "Lettuce",
            description: "Lettuce is a leafy vegetable that is a member of the daisy family. It is an annual plant that is commonly grown for its edible leaves, which are used in salads, sandwiches, and a variety of other dishes.\n\nIt is a nutritious vegetable that is low in calories and high in fiber, vitamins, and minerals. It is an excellent source of vitamin K, vitamin A, and folate, and can be a valuable addition to a healthy diet.",
            sun: "6hr/day",
            temperature: "15-18°C",
            water: "1x/ 2 weeks",
            harvestTime: "Planting+ 30-70D",
            soil: "Well-drained+organic matter",
            pest: "Aphids, Slugs and snails, Cutworm, Leafminers,Cabbage worms",
            love: "1x/ 2 weeks"),
        
        Plant(
            name: "Radish",
            latinName: "Raphanus sativus",
            level: "Easy",
            levelColor: Color(red: 0.255, green: 0.767, blue: 0.476),
            imageName: "Radish",
            description: "Radish is a root vegetable that belongs to the Brassicaceae family. It comes in a variety of colors: red, white, and black, and has a crisp, slightly spicy flavor. Radishes are rich in vitamin C, folate, fiber, and low in calories.\n\nThey can be eaten raw, cooked, or pickled, and are often used in salads, sandwiches, and as a garnish for various dishes. ",
            sun: "6hr/day",
            temperature: "10-21°C ",
            water: "1-2x/week",
            harvestTime: "Planting+ 20-60D",
            soil: "Well-drained+organic matter",
            pest: "Aphids, Flea beetles, root maggots, Cabbage worms, Cutworms, Slug and snails",
            love: "1-2x during growth cycle"),
        
        Plant(
            name: "Eggplant",
            latinName: "Solanum melongena",
            level: "Easy",
            levelColor: Color(red: 0.255, green: 0.767, blue: 0.476),
            imageName: "Eggplant",
            description: "Eggplant is a popular vegetable that is used in many cuisines around the world. Eggplants are low in calories and high in fiber and other important nutrients, such as vitamins C and K, and potassium.\n\nEggplants are versatile vegetables that can be cooked in a variety of ways, such as grilling, roasting, sautéing, or frying. ",
            sun: "6hr/day",
            temperature: "21-29°C",
            water: "1-2x/week",
            harvestTime: "Planting+ 60-80D",
            soil: "Well-drained",
            pest: "Flea beetles, Spider mites, and Aphids",
            love: "1x/ 2 weeks"),
        
        Plant(
            name: "Tomato",
            latinName: "Solanum lycopersicum",
            level: "Moderate",
            levelColor: Color(red: 0.871, green: 0.567, blue: 0.292),
            imageName: "Tomato",
            description: "Tomatoes are a member of the nightshade family and are native to South America. They are grown around the world for their edible fruit, which is used in a variety of cuisines.\n\nTomatoes are rich in vitamins A and C, as well as antioxidants and other beneficial nutrients. They can be eaten raw or cooked, and are used in a wide range of dishes, including salads, sandwiches, soups, sauces, and stews.",
            sun: "6-8hr/day",
            temperature: "10-35°C",
            water: "1-2x/week",
            harvestTime: "Planting+ 60-100D",
            soil: "Well-drained+organic matter",
            pest: "Aphids, Whiteflies, Slugs and snails, Spider mites, Tomato fruitworms, Tomato hornworms, Cutworms",
            love: "1x/ month"),
        
        Plant(
            name: "Water Spinach",
            latinName: "Ipomoea aquatica",
            level: "Easy",
            levelColor: Color(red: 0.255, green: 0.767, blue: 0.476),
            imageName: "Water spinach",
            description: "Water Spinach is a leafy vegetable that is commonly used in Southeast Asian cuisine.\n\nIt is a fast-growing plant and can quickly become overgrown if not harvested regularly. Additionally, Water Spinach should be consumed or refrigerated as soon as possible after harvesting, as it tends to wilt quickly. ",
            sun: "± 6hr/day",
            temperature: "25-28°C",
            water: "1-2x/week",
            harvestTime: "Planting+ 4-6W",
            soil: "Loose+organic matter",
            pest: "Leaf miners, aphids, and root rot",
            love: "1x/month"),
        
        Plant(
            name: "Pakcoy (Bok choy)",
            latinName: "Brassica rapa subsp. chinensis",
            level: "Easy",
            levelColor: Color(red: 0.255, green: 0.767, blue: 0.476),
            imageName: "Bokchoy",
            description: "Bok choy, also known as pak choi or Chinese cabbage, is a leafy green vegetable that is commonly used in Chinese and other Asian cuisines.\n\nBok choy has a mild, slightly sweet flavor and a crisp, crunchy texture. The leaves and stems of bok choy can be eaten raw or cooked, and are a rich source of vitamins and minerals, including vitamins A, C, and K, calcium, and potassium.",
            sun: "± 6hr/day",
            temperature: "10-24°C",
            water: "1-2x/week",
            harvestTime: "Planting+ 20-30D",
            soil: "Well-drained+organic matter",
            pest: "Aphids, flea beetles, and cabbage worms, as well as diseases such as downy mildew and clubroot.",
            love: "1x/2 weeks"),
        
        Plant(
            name: "Mustard Green",
            latinName: "Brassica juncea L.",
            level: "Easy",
            levelColor: Color(red: 0.255, green: 0.767, blue: 0.476),
            imageName: "Mustard green",
            description: "Mustard greens are leafy green vegetables that belong to the Brassicaceae family, which includes other popular vegetables like broccoli and cabbage. They are known for their sharp, peppery flavor and are often used in salads, soups, stir-fries, and other dishes.\n\nMustard greens are packed with nutrients, including vitamins A, C, and K, as well as calcium, iron, and potassium. They are a healthy and flavorful addition to any diet and can be enjoyed cooked or raw.",
            sun: "± 6hr/day",
            temperature: "7-24°C",
            water: "1-2x/week",
            harvestTime: "Planting+ 20-30D",
            soil: "Well-drained+organic matter",
            pest: "Aphids, flea beetles, and cabbage worms, as well as diseases such as downy mildew and clubroot",
            love: "1x/ 2 weeks"),
        
        Plant(
            name: "Cucumber",
            latinName: "Cucumis sativus",
            level: "Easy",
            levelColor: Color(red: 0.255, green: 0.767, blue: 0.476),
            imageName: "Cucumber",
            description: "Cucumbers are a member of the gourd family and are widely grown for their crisp, refreshing fruits. Cucumbers are typically eaten raw in salads, sandwiches, or as a snack, but can also be pickled or cooked. They are a good source of vitamins and minerals, as well as fiber and water.\n\nThe fruits of cucumber plants are long and cylindrical, with a waxy skin that can range in color from light green to dark green.",
            sun: "6-8hr/day",
            temperature: "21-35°C",
            water: "3x/week",
            harvestTime: "Planting+ 50-70D",
            soil: "Well-drained+organic matter",
            pest: "Cucumber beetles, Aphids, Spider mites, Whiteflies, Thrips",
            love: "1x/ 3 weeks"),
        
            
            
    ]
}
