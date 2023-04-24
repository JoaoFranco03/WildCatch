import Foundation
import SwiftUI

final class ModelData: ObservableObject {
    
    static let shared = ModelData()
    
    //Criation of all the Animals
    var animals = [
        Animal(
            name:"Iberian Lynx",
            group: .mammals,
            scientificName: "Lynx pardinus",
            description: "The Iberian Lynx is a medium-sized wild cat species with reddish-brown fur and black spots, tufts of black hair on their ears, and short tails with a black tip. They are highly specialized hunters and primarily feed on rabbits. The species is endangered, with only around 1000 individuals remaining in the wild due to habitat loss and a decline in prey species. Conservation efforts are underway to try and save the species from extinction.",
            endangeredStatus: .endangered,
            habitat: .forest,
            funFacts:[
                "The Iberian Lynx is an excellent climber and has been observed climbing trees up to 5 meters in height, using its sharp claws and muscular body. This is a unique ability among wild cat species.",
                "The Iberian Lynx has a highly specialized diet that consists almost entirely of rabbits. They may eat one to two rabbits per day depending on the size of the rabbit.",
                "In 2015, the Iberian Lynx became the first cat species to be downgraded from 'critically endangered' to 'endangered' due to conservation efforts."
            ],
            photo: UIImage(named: "IberianLynx"),
            isAnimalOfTheMonth: true
        ),
        Animal(
            name: "Amur Leopard",
            group: .mammals,
            scientificName: "Panthera pardus orientalis",
            description: "The Amur Leopard is a big cat species native to the Amur region of eastern Russia and northeastern China. They have a pale golden coat with black spots, and are well adapted to life in cold climates. The species is critically endangered, with only around 100 individuals remaining in the wild due to habitat loss and poaching. Conservation efforts are underway to try and save the species from extinction.",
            endangeredStatus: .criticallyEndangered,
            habitat: .forest,
            funFacts:[
                "The Amur Leopard is an excellent swimmer and has been observed crossing rivers up to 9 meters wide. This is a unique ability among big cat species.",
                "The Amur Leopard can run up to 37 miles per hour (60 km/h), making it one of the fastest big cats in the world.",
                "Amur Leopards are solitary animals and only come together during mating season."],
            photo: UIImage(named: "AmurLeopard")
            ,
            isAnimalOfTheMonth: false
        ),
        Animal(
            name: "Javan Rhino",
            group: .mammals,
            scientificName: "Rhinoceros sondaicus",
            description: "The Javan Rhino is a critically endangered species of rhinoceros that is native to the Indonesian island of Java. They are one of the rarest large mammals on Earth, with only about 70 individuals remaining in the wild. The species is threatened by habitat loss and poaching for their valuable horns, which are used in traditional medicine.",
            endangeredStatus: .criticallyEndangered,
            habitat: .forest,
            funFacts: [
                "Javan Rhinos are solitary animals and are rarely seen in groups, except for mothers with their young. They are also excellent swimmers and are known to cross rivers and even swim between islands.",
                "The Javan Rhino is the most threatened of all five rhinoceros species, with only around 72 individuals remaining in the wild.",
                "They have poor eyesight, but their sense of hearing and smell is very acute, which helps them avoid predators and find food."],
            photo: UIImage(named: "JavanRhino"),
            isAnimalOfTheMonth: false
        ),
        Animal(
            name: "African Forest Elephant",
            group: .mammals,
            scientificName: "Loxodonta cyclotis",
            description: "The African Forest Elephant is a forest-dwelling elephant species found in several African countries. They have straighter and downward-pointing tusks compared to the African Savanna Elephant, and their ears are more oval-shaped. They are important for maintaining the ecosystem of the forests they inhabit by creating clearings and spreading seeds. Unfortunately, they are threatened by habitat loss and poaching for their ivory tusks.",
            endangeredStatus: .criticallyEndangered,
            habitat: .forest,
            funFacts: [
                "African Forest Elephants have a unique method of communication that involves the production of very low-frequency sounds, which can travel over long distances through the forest canopy.",
                "These elephants are excellent swimmers and have been observed crossing wide rivers to access new areas of the forest in search of food and water.",
                "African Forest Elephants have a diet that consists mainly of leaves, fruits, and bark, and they can eat up to 400 pounds of vegetation in a single day."
            ],
            photo: UIImage(named: "AfricanForestElephant"),
            isAnimalOfTheMonth: false
        ),
        Animal(
            name: "Sumatran Orangutan",
            group: .mammals,
            scientificName: "Pongo abelii",
            description: "The Sumatran Orangutan is one of two species of orangutan and is endemic to the island of Sumatra in Indonesia. They are the most arboreal of the great apes and spend most of their time in trees. The species is critically endangered, with only around 14,600 individuals remaining in the wild due to habitat loss and poaching. Conservation efforts are underway to try and save the species from extinction.",
            endangeredStatus: .criticallyEndangered,
            habitat: .tropicalForest,
            funFacts: [
                "The Sumatran Orangutan has a unique culture and exhibits tool use, using sticks to extract insects and honey from trees. Different populations have been observed using different tools, which are passed down through generations.",
                "Sumatran Orangutans are the most arboreal (tree-dwelling) of all great apes, spending nearly all their time in trees.",
                "Sumatran Orangutans have a unique way of building their nests for sleeping. They weave branches together to form a platform and then add leaves and twigs for cushioning."
            ],
            photo: UIImage(named: "SumatranOrangutan"),
            isAnimalOfTheMonth: false
        ),
        Animal(
            name: "Polar Bear",
            group: .mammals,
            scientificName: "Ursus maritimus",
            description: "The Polar Bear is a large bear species that is native to the Arctic region. They are well-adapted to living in extreme cold and are excellent swimmers. The species is considered vulnerable, with around 22,000-31,000 individuals remaining in the wild due to climate change, hunting, and pollution. Conservation efforts are underway to try and save the species from extinction.",
            endangeredStatus: .vulnerable,
            habitat: .arctic,
            funFacts: [
                "The Polar Bear has a thick layer of fat and a dense fur coat that helps it survive in the extreme cold. In fact, their fur is not actually white, but is made up of transparent hollow tubes that reflect light, making it appear white.",
                "Polar Bears are known to enter a state of walking hibernation during the summer months when food is scarce, reducing their metabolic rate and conserving energy.",
                "Polar Bears have black skin under their white fur, which helps to absorb heat from the sun and keep them warm in the frigid Arctic temperatures."
            ],
            photo: UIImage(named: "PolarBear"),
            isAnimalOfTheMonth: false
        ),
        Animal(
            name: "Walrus",
            group: .mammals,
            scientificName: "Odobenus rosmarus",
            description: "The Walrus is a large marine mammal that is found in the Arctic Ocean and subarctic seas. They are easily recognized by their large tusks, whiskers, and flippers. They are well adapted to their environment and can dive to depths of up to 90 meters in search of food, which mainly consists of clams, mussels, and other benthic invertebrates. The species is considered vulnerable, with populations declining due to habitat loss, hunting, and climate change.",
            endangeredStatus: .vulnerable,
            habitat: .arctic,
            funFacts: [
                "Male walruses can weigh up to 1.5 tons and have tusks that can grow up to 1 meter in length. They use their tusks for a variety of tasks, including breaking through ice, defending themselves from predators, and helping them haul themselves onto land.",
                "Walruses have a special adaptation that allows them to dive and stay underwater for up to 30 minutes. They can reduce their heart rate to slow down their metabolism and divert blood from their extremities to their vital organs.",
                "Walruses are known for their vocalizations, including grunts, growls, and bellows. They use these sounds to communicate with each other, especially during breeding season."
            ],
            photo: UIImage(named: "Walrus"),
            isAnimalOfTheMonth: false
        ),
        Animal(
            name: "Adélie Penguin",
            group: .birds,
            scientificName: "Pygoscelis adeliae",
            description: "The Adélie Penguin is a medium-sized species of penguin with a black head and back, a white belly, and a distinctive white ring around the eye. They are adapted to living in the extreme cold and harsh conditions of Antarctica, and can dive up to 170 meters deep to catch their prey, which includes krill and small fish. The species is not currently considered endangered, but is threatened by climate change and human activities in their habitat.",
            endangeredStatus: .leastConcern,
            habitat: .polar,
            funFacts: [
                "Adélie Penguins are named after the wife of French explorer Jules Dumont d'Urville, who discovered the species in 1840 during an expedition to Antarctica.",
                "Despite being adapted to live in some of the harshest conditions on Earth, Adélie Penguins have a playful and social nature and are often seen sliding on their bellies or porpoising out of the water.",
                "Adélie Penguins have a unique way of communicating with each other. They use a complex system of vocalizations, body postures, and other behaviors to convey different messages, such as warnings of danger or signaling for food."
            ],
            photo: UIImage(named: "AdeliePenguin"),
            isAnimalOfTheMonth: false
        ),
        Animal(
            name: "Amazon River Dolphin",
            group: .mammals,
            scientificName: "Inia geoffrensis",
            description: "The Amazon River Dolphin, also known as the pink river dolphin or boto, is a freshwater species of dolphin found in the Amazon and Orinoco river systems in South America. They are known for their distinctive pink coloration, which is caused by the blood vessels close to their skin surface. Amazon River Dolphins are adapted to life in murky waters and have a flexible neck that allows them to navigate through flooded forests. The species is considered near threatened due to habitat loss, pollution, and overfishing.",
            endangeredStatus: .nearThreatened,
            habitat: .amazonia,
            funFacts: [
                "Amazon River Dolphins are social animals and often form groups of up to 10 individuals. They communicate with each other using a variety of sounds, including whistles, clicks, and pulsed sounds.",
                "Amazon River Dolphins are also known as pink river dolphins due to their distinctive pink coloration. The color comes from blood vessels under the skin, which can become more visible when the dolphin is excited or agitated.",
                "These dolphins are known for their flexible necks, which allow them to turn their heads up to 90 degrees. This is useful for navigating through the complex river system and catching prey."
            ],
            photo: UIImage(named: "AmazonRiverDolphin"),
            isAnimalOfTheMonth: false
        ),
        Animal(
            name: "Cat",
            group: .mammals,
            scientificName: "Felis catus",
            description: "The cat is a small carnivorous mammal that is often kept as a pet. They come in a variety of coat colors and patterns, and have a highly adaptable nature that has allowed them to thrive in a wide range of environments. Cats are skilled hunters and are known for their agility, balance, and sharp senses. They are often kept as indoor pets, but can also be allowed to roam outdoors.",
            endangeredStatus: .leastConcern,
            habitat: .domestic,
            funFacts: [
                "Cats are believed to be one of the only domesticated animals that haven't significantly changed in physical appearance in over 3,000 years.",
                "Cats have a special flexible collarbone and a unique walking style that allows them to jump up to six times their body length.",
                "A group of cats is called a clowder, while a group of kittens is called a kindle."
            ],
            photo: UIImage(named: "DomesticCat"),
            isAnimalOfTheMonth: false
        ),
        Animal(
            name: "Dog",
            group: .mammals,
            scientificName: "Canis lupus familiaris",
            description: "The Dog is a domesticated subspecies of the gray wolf and is the most widely abundant carnivore in the world. They come in a wide variety of breeds, shapes, sizes, and colors, and are kept as pets and working animals by humans. Dogs are highly intelligent and trainable, and are used for tasks such as hunting, herding, search and rescue, and as therapy animals. They are also known for their loyalty and companionship.",
            endangeredStatus: .leastConcern,
            habitat: .domestic,
            funFacts: [
                "Dogs have been domesticated for over 15,000 years, and have evolved to have a close relationship with humans.",
                "The tallest dog ever recorded was a Great Dane named Zeus, who measured 44 inches (1.118 meters) from paw to shoulder. The smallest dog ever recorded was a Chihuahua named Miracle Milly, who measured just 3.8 inches (9.65 cm) tall.",
                "Dogs have a sense of smell that is about 100,000 times stronger than humans, making them excellent at detecting various scents and odors."
            ],
            photo: UIImage(named: "DomesticDog"),
            isAnimalOfTheMonth: false
        ),
        Animal(
            name: "Dolphin",
            group: .mammals,
            scientificName: "Delphinidae",
            description: "Dolphins are highly intelligent and social marine mammals that are known for their playful behavior and acrobatic abilities. They have streamlined bodies, a dorsal fin, and a long snout with teeth for catching fish and squid. There are over 40 species of dolphins, and they can be found in oceans and rivers all around the world. Some species are threatened by habitat loss, pollution, and hunting.",
            endangeredStatus: .vulnerable,
            habitat: .ocean,
            funFacts: [
                "Dolphins communicate with each other using a variety of sounds, including clicks, whistles, and body language. They also have a highly developed sense of echolocation, which they use to navigate and find prey.",
                "Dolphins are some of the fastest swimmers in the ocean, with some species capable of reaching speeds of up to 60 kilometers per hour (37 miles per hour).",
                "Dolphins have the ability to sleep with one eye open and one eye closed. This helps them remain alert for potential predators while still getting the rest they need."
            ],
            photo: UIImage(named: "Dolphin"),
            isAnimalOfTheMonth: false
        ),
        Animal(
            name: "Emperor Penguin",
            group: .birds,
            scientificName: "Aptenodytes forsteri",
            description: "Emperor Penguins are the largest species of penguin and are known for their distinctive black and white plumage, with a bright yellow patch on their necks. They live in the Antarctic and are adapted to living in extreme cold and harsh weather conditions. Emperor Penguins are social birds and form large colonies during the breeding season, where they huddle together for warmth. They feed primarily on fish and squid, which they catch by diving to depths of over 500 meters.",
            endangeredStatus: .nearThreatened,
            habitat: .polar,
            funFacts: [
                "Emperor Penguins are famous for their parental care, with males incubating the eggs on their feet for up to two months while females go out to sea to feed. They also have the longest breeding cycle of any bird species, with the entire process taking around 9 months.",
                "Emperor Penguins are the largest penguins in the world, standing up to 4 feet (1.2 meters) tall and weighing up to 90 pounds (40 kg).",
                "Emperor Penguins can hold their breath for up to 20 minutes while diving for food. They can dive to depths of over 500 meters (1,640 feet) in search of fish and squid."
            ],
            photo: UIImage(named: "EmperorPenguin"),
            isAnimalOfTheMonth: false
        ),
        Animal(
            name: "Galápagos Penguin",
            group: .birds,
            scientificName: "Spheniscus mendiculus",
            description: "Galápagos Penguins are the only penguin species found north of the equator, living on the Galápagos Islands off the coast of Ecuador. They are small penguins, measuring only around 50 cm in height, and have black and white feathers with a distinctive stripe of black feathers across their chest. They feed on small fish and squid, which they catch by diving to depths of up to 30 meters. Galápagos Penguins are endangered, with only around 2,000 individuals remaining in the wild due to habitat loss and climate change.",
            endangeredStatus: .endangered,
            habitat: .coastal,
            funFacts: [
                "Galápagos Penguins are able to survive in the warm waters around the equator thanks to cool ocean currents and the availability of food. They are also unique in that they mate and breed throughout the year, rather than just during a specific season.",
                "The Galápagos Penguin is the only species of penguin found north of the equator.",
                "They are the smallest species of penguin and stand only about 18 inches tall."
            ],
            photo: UIImage(named: "GalapagosPenguin"),
            isAnimalOfTheMonth: false
        ),
        Animal(
            name: "Giant Panda",
            group: .mammals,
            scientificName: "Ailuropoda melanoleuca",
            description: "Giant Pandas are large, bear-like mammals native to central China. They have distinctive black and white fur, with black patches around their eyes and on their ears, legs, and shoulders. They primarily feed on bamboo, and their digestive system is adapted to a diet of this tough plant. Giant Pandas are endangered, with only around 1,800 individuals remaining in the wild due to habitat loss and fragmentation, as well as poaching and human encroachment.",
            endangeredStatus: .endangered,
            habitat: .forest,
            funFacts: [
                "Despite their large size and powerful jaws, Giant Pandas have a diet that is almost exclusively vegetarian, consisting of bamboo shoots and leaves. They can eat up to 30 kg of bamboo in a single day!",
                "Giant Pandas have a unique vocalization system, with over 11 different types of vocalizations that they use to communicate with each other. These include bleats, barks, and honks, and are used to signal everything from hunger to aggression.",
                "Giant Pandas have a thumb-like extension on their front paws, which they use to grip bamboo stalks and strip off the leaves. This 'thumb' is actually an extension of the wrist bone and is called a pseudo thumb."
            ],
            photo: UIImage(named: "GiantPanda"),
            isAnimalOfTheMonth: false
        ),
        
        Animal(
            name: "Lion",
            group: .bigCats,
            scientificName: "Panthera leo",
            description: "Lions are one of the most iconic big cat species, known for their impressive manes and loud roars. They are social animals that live in prides, typically consisting of a few males, several females, and their cubs. Lions are apex predators and hunt a variety of prey, including antelopes, zebras, and buffalo. They are threatened by habitat loss, poaching, and conflict with humans.",
            endangeredStatus: .vulnerable,
            habitat: .grassland,
            funFacts: [
                "Lions are the only truly social cats, living in prides that can consist of up to 30 individuals. Male lions defend the pride's territory, while females do most of the hunting.",
                "Lions are apex predators and are known for their impressive hunting skills. They can run up to 50 miles per hour and can take down prey much larger than themselves, such as buffalo and giraffes.",
                "Lions are the second-largest living cat species, after tigers. Adult males can weigh up to 550 pounds and reach up to 10 feet in length, including their tail."
            ],
            photo: UIImage(named: "Lion"),
            isAnimalOfTheMonth: false
        ),
        Animal(
            name: "Mountain Gorilla",
            group: .mammals,
            scientificName: "Gorilla beringei beringei",
            description: "The Mountain Gorilla is a critically endangered primate species that lives in the mountain forests of central Africa. They are the largest living primates and have long, thick black fur that helps them stay warm in their chilly mountain habitat. Mountain Gorillas live in groups led by a dominant male called a silverback, and they primarily feed on plant material like leaves, stems, and bamboo shoots. They are threatened by habitat loss, poaching, and disease.",
            endangeredStatus: .criticallyEndangered,
            habitat: .forest,
            funFacts: [
                "Mountain Gorillas are some of the closest living relatives to humans, sharing over 98% of our DNA. Despite their size and strength, they are gentle animals that are known to show affection and play with their young.",
                "Mountain gorillas live in family groups called troops, led by a dominant silverback male. The silverback is responsible for the safety and wellbeing of the group, and will defend them fiercely against any potential threat.",
                "Mountain Gorillas are one of the few animals known to engage in true play, including games of tag and wrestling."
            ],
            photo: UIImage(named: "MountainGorilla"),
            isAnimalOfTheMonth: false
        ),
        Animal(
            name: "European Rabbit",
            group: .mammals,
            scientificName: "Oryctolagus cuniculus",
            description: "The European Rabbit is a small mammal species that is native to southwestern Europe and northwestern Africa. They are known for their soft fur, long ears, and twitching noses. European Rabbits are social animals that live in large colonies, and they are an important prey species for many predators. They primarily eat grasses, herbs, and other vegetation, and they are active at dawn and dusk.",
            endangeredStatus: .nearThreatened,
            habitat: .grassland,
            funFacts: [
                "European Rabbits are known for their incredible agility and speed, and they can run at speeds of up to 45 kilometers per hour to evade predators. They are also important in many cultures as a symbol of fertility and abundance.",
                "The European Rabbit has a unique way of escaping predators: they make sudden leaps and zigzag movements, which can be difficult for predators to follow.",
                "European Rabbits are able to jump up to three meters in one bound. This is due to their powerful hind legs and flexible spine."
            ],
            photo: UIImage(named: "EuropeanRabbit"),
            isAnimalOfTheMonth: false
        ),
        Animal(
            name: "Red Panda",
            group: .mammals,
            scientificName: "Ailurus fulgens",
            description: "The Red Panda is a small, arboreal mammal that is native to the eastern Himalayas and southwestern China. They have soft, reddish-brown fur, a long, bushy tail, and distinctive facial markings. Red Pandas are primarily herbivores and feed on bamboo leaves, but they will also eat fruits, berries, and insects. They are solitary animals that are most active at night, and they are known for their climbing and acrobatic abilities.",
            endangeredStatus: .endangered,
            habitat: .forest,
            funFacts: [
                "Despite their name and appearance, Red Pandas are not closely related to Giant Pandas. They are actually more closely related to raccoons and weasels. In fact, their scientific name, Ailurus fulgens, means 'shining cat'.",
                "Red pandas have a false thumb, which is an extension of their wrist bone, that helps them grip and climb trees.",
                "These animals are largely nocturnal, sleeping during the day in trees and becoming active at night to forage for food."
            ],
            photo: UIImage(named: "RedPanda"),
            isAnimalOfTheMonth: true
        ),
        Animal(
            name: "Scimitar Oryx",
            group: .mammals,
            scientificName: "Oryx dammah",
            description: "The Scimitar Oryx, also known as the Sahara Oryx, is a medium-sized antelope that is native to the Sahara Desert in North Africa. They have a distinctive white coat and long, thin horns that curve backwards. Scimitar Oryx are herbivores and primarily feed on grasses and leaves. They are well adapted to the harsh desert environment and can survive for long periods without water.",
            endangeredStatus: .extinctInTheWild,
            habitat: .desert,
            funFacts: [
                "The Scimitar Oryx was once widespread across North Africa, but due to overhunting and habitat loss, it became extinct in the wild in 2000. However, conservation efforts have successfully reintroduced captive-bred individuals back into their former range in Chad and Tunisia.",
                "They are social animals and can be found in groups of up to 70 individuals, led by a dominant male.",
                "Scimitar Oryx are well-known for their impressive horns which can grow up to 4 feet long."
            ],
            photo: UIImage(named: "ScimitarOryx"),
            isAnimalOfTheMonth: false
        ),
        Animal(
            name: "Sea Turtle",
            group: .reptiles,
            scientificName: "Testudines",
            description: "Sea turtles are large marine reptiles that have been around for more than 100 million years. They have streamlined bodies and flippers that allow them to swim long distances in the open ocean. Sea turtles are omnivores and eat a variety of plants and animals, including jellyfish, seaweed, and crabs. They are also important to ocean ecosystems because they help maintain healthy seagrass beds and coral reefs.",
            endangeredStatus: .endangered,
            habitat: .ocean,
            funFacts: [
                "Female sea turtles return to the same beach where they were born to lay their eggs. Some species of sea turtles can travel thousands of miles to get to their nesting beaches.",
                "Sea turtles can hold their breath for several hours and can slow their heart rate to conserve oxygen when diving.",
                "Sea turtles have existed for more than 100 million years and have remained relatively unchanged over time."
            ],
            photo: UIImage(named: "SeaTurtle"),
            isAnimalOfTheMonth: false
        ),
        Animal(
            name: "Snow Leopard",
            group: .bigCats,
            scientificName: "Panthera uncia",
            description: "The Snow Leopard is a large cat native to the mountain ranges of Central and South Asia. They are well-adapted to living in cold and rugged environments and are known for their thick, whitish-grey fur with black spots. Snow Leopards are solitary and elusive animals, making them difficult to study in the wild. They primarily feed on wild sheep and goats, and their populations are threatened by poaching and habitat loss.",
            endangeredStatus: .endangered,
            habitat: .mountains,
            funFacts: [
                "Snow Leopards are excellent climbers and can leap up to 20 feet in a single bound.",
                "Snow Leopards are well adapted to life in cold, high-altitude environments. They have thick fur and large, wide paws that help them to walk on snow without sinking.",
                "Snow Leopards are incredibly elusive animals and are rarely seen in the wild. They are masters of camouflage and can blend into their surroundings to avoid detection."
            ],
            photo: UIImage(named: "SnowLeopard"),
            isAnimalOfTheMonth: false
        ),
        Animal(
            name: "Spix's Macaw",
            group: .birds,
            scientificName: "Cyanopsitta spixii",
            description: "Spix's Macaw is a small, blue parrot that is native to Brazil. It is one of the rarest birds in the world and is considered critically endangered, with only a few individuals remaining in captivity. The species was driven to near-extinction due to habitat loss and capture for the pet trade.",
            endangeredStatus: .criticallyEndangered,
            habitat: .forest,
            funFacts: [
                "Spix's Macaw was the inspiration for the character Blu in the animated movie Rio.",
                "They are highly intelligent and can learn to imitate human speech, as well as perform a variety of tricks and behaviors.",
                "These birds are also known for their long, hooked beaks which they use to crack open hard-shelled nuts and seeds."
            ],
            photo: UIImage(named: "SpixsMacaw"),
            isAnimalOfTheMonth: false
        ),
        Animal(
            name: "Sunda Tiger",
            group: .bigCats,
            scientificName: "Panthera tigris sondaica",
            description: "The Sunda Tiger is a subspecies of tiger that is native to the Indonesian island of Sumatra. They are smaller than other tiger subspecies and have a darker, more uniform coat. Sunda Tigers are critically endangered, with only a few hundred individuals remaining in the wild due to habitat loss and poaching.",
            endangeredStatus: .criticallyEndangered,
            habitat: .forest,
            funFacts: [
                "Sunda Tigers are excellent swimmers and are known to hunt fish in rivers and streams.",
                "The Sunda Tiger is the smallest tiger subspecies and is found exclusively on the Indonesian island of Sumatra.",
                "Despite being a solitary animal, the Sunda Tiger is known to communicate with other tigers through vocalizations such as growls, roars, and chuffs."
            ],
            photo: UIImage(named: "SundaTiger"),
            isAnimalOfTheMonth: false
        ),
        Animal(
            name: "Humpback Whale",
            group: .mammals,
            scientificName: "Megaptera novaeangliae",
            description: "The Humpback Whale is a large marine mammal found in oceans around the world. They are known for their long, melodic songs and acrobatic displays, such as breaching and tail slapping. Humpback Whales are migratory, traveling thousands of miles each year to breed and feed. The species was heavily hunted for its blubber and meat in the 20th century, but populations have since rebounded due to conservation efforts.",
            endangeredStatus: .leastConcern,
            habitat: .ocean,
            funFacts: [
                "Humpback Whales can sing for hours on end and their songs can travel for great distances through the ocean. The purpose of their songs is still unknown, but they are thought to be related to courtship and communication.",
                "Humpback whales are known for their acrobatic displays, such as breaching and tail slapping, which are believed to be a form of communication and also used to stun prey.",
                "Despite their large size, humpback whales feed on tiny krill and small fish, consuming up to 1.5 tons of food per day during feeding season."
            ],
            photo: UIImage(named: "WhaleBackground"),
            isAnimalOfTheMonth: false
        ),
        Animal(
            name: "Hamster",
            group: .mammals,
            scientificName: "Cricetinae sp.",
            description: "The Hamster is a small, furry rodent that is often kept as a pet. There are several different species of Domestic Hamsters, each with their own unique characteristics and care requirements. They are generally active and playful, and enjoy running on exercise wheels and playing with toys. Hamsters are omnivorous and eat a diet that consists of pellets, fruits, and vegetables.",
            endangeredStatus: .leastConcern,
            habitat: .domestic,
            funFacts: [
                "Hamsters have cheek pouches that they use to carry food back to their burrows. Their pouches can stretch to three times the size of their head!",
                "Hamsters are crepuscular, meaning they are most active during dawn and dusk.",
                "Hamsters are rodents that are native to parts of Europe and Asia. They were first kept as pets in the 1930s, and have since become one of the most popular small pets in the world."
            ],
            photo: UIImage(named: "DomesticHamster"),
            isAnimalOfTheMonth: false
        ),
        Animal(name: "Blue Shark",
               group: .fish,
               scientificName: "Prionace glauca",
               description: "The Blue Shark is a large and slender shark species that is found in deep waters around the world. They are known for their striking blue coloration and their long, pointed snout. Blue Sharks are an important species for commercial fishing, but their populations have declined due to overfishing and bycatch.",
               endangeredStatus: .nearThreatened,
               habitat: .ocean,
               funFacts: [
                "Blue Sharks are known to swim in large groups, or schools, sometimes numbering in the hundreds or even thousands of individuals.",
                "The Blue Shark is one of the most widespread shark species in the world and can be found in all of the world's oceans.",
                "Despite their fierce reputation, Blue Sharks are not typically dangerous to humans and rarely attack people."
               ],
               photo: UIImage(named: "BlueShark"),
               isAnimalOfTheMonth: false),
        
        Animal(name: "Brown Bear",
               group: .mammals,
               scientificName: "Ursus arctos",
               description: "The Brown Bear is a large bear species found throughout much of North America, Europe, and Asia. They are known for their shaggy fur, large size, and distinctive hump on their shoulders. Brown Bears are excellent swimmers and climbers, and are often seen fishing in rivers for salmon.",
               endangeredStatus: .leastConcern,
               habitat: .forest,
               funFacts: [
                "Brown Bears can run at speeds of up to 30 miles per hour, and can swim for long distances in water.",
                "Brown Bears are found throughout North America, Europe, and Asia, and are the largest predators in many of the ecosystems where they live.",
                "Brown Bears are known for their excellent sense of smell, which they use to find food and identify potential threats."
               ],
               photo: UIImage(named: "BrownBear"),
               isAnimalOfTheMonth: false),
        
        Animal(name: "Capybara",
               group: .mammals,
               scientificName: "Hydrochoerus hydrochaeris",
               description: "The Capybara is the largest rodent species in the world, and is native to South America. They are known for their large size, webbed feet, and their love of water. Capybaras are social animals and are often found living in large groups near rivers and lakes.",
               endangeredStatus: .leastConcern,
               habitat: .wetland,
               funFacts: [
                "Capybaras have been known to form close bonds with other animals, including birds and even domestic dogs.",
                "Capybaras are the largest rodents in the world and can weigh up to 140 pounds.",
                "Despite their size, Capybaras are excellent swimmers and can hold their breath underwater for up to five minutes."
               ],
               photo: UIImage(named: "Capybara"),
               isAnimalOfTheMonth: false),
        Animal(
            name: "Cheetah",
            group: .mammals,
            scientificName: "Acinonyx jubatus",
            description: "The Cheetah is a large and fast land animal found primarily in Africa. They are known for their distinctive spotted fur and their incredible speed, which allows them to run at speeds of up to 75 miles per hour. Cheetahs are an endangered species due to habitat loss and hunting.",
            endangeredStatus: .endangered,
            habitat: .grassland,
            funFacts: [
                "Cheetahs have been trained for hunting by humans for thousands of years, and were often kept as pets by ancient Egyptian royalty.",
                "Cheetahs are diurnal, meaning they are primarily active during the day. They have excellent eyesight that allows them to spot potential prey from far away, and they use their speed and agility to catch their prey in open grasslands.",
                "Unlike other big cats, cheetahs don't roar. Instead, they communicate with each other through a variety of vocalizations such as chirps, growls, and purrs."
            ],
            photo: UIImage(named: "Cheetah"),
            isAnimalOfTheMonth: false
        ),
        Animal(
            name: "Clownfish",
            group: .fish,
            scientificName: "Amphiprioninae",
            description: "The Clownfish is a small and brightly colored fish that is found in coral reefs throughout the world. They are known for their distinctive orange and white stripes, and for their symbiotic relationship with sea anemones. Clownfish are popular aquarium pets, but are also threatened by overfishing and the destruction of their coral reef habitats.",
            endangeredStatus: .vulnerable,
            habitat: .coralReef,
            funFacts: [
                "Clownfish are territorial fish and will fiercely defend their anemone homes from intruders.",
                "Clownfish are also known as anemonefish, as they form symbiotic relationships with sea anemones.",
                "Clownfish are very territorial and will aggressively defend their anemone home from other fish and even scuba divers."
            ],
            photo: UIImage(named: "ClownFish"),
            isAnimalOfTheMonth: false
        ),
        Animal(
            name: "Common Garter Snake",
            group: .reptiles,
            scientificName: "Thamnophis sirtalis",
            description: "The common garter snake is a non-venomous snake that is found throughout North America. It is a small snake that can range in color from green to brown with stripes running along its body. They are common in suburban areas and can often be found in gardens or near water sources.",
            endangeredStatus: .leastConcern,
            habitat: .grassland,
            funFacts: [
                "Common garter snakes are known to secrete a foul-smelling musk when they feel threatened, which can deter predators.",
                "Common Garter Snakes are found throughout North America and are one of the most common species of snake in the US.",
                "Garter Snakes are not venomous and are actually very beneficial to have around, as they eat pests such as slugs, insects, and small rodents."
            ],
            photo: UIImage(named: "CommonGarterSnake"),
            isAnimalOfTheMonth: false
        ),
        Animal(
            name: "Crocodile",
            group: .reptiles,
            scientificName: "Crocodylidae",
            description: "Crocodiles are large, semi-aquatic reptiles that are found in tropical and subtropical regions. They have a long, powerful tail, strong jaws, and sharp teeth that make them fearsome predators. Crocodiles can grow up to 20 feet in length and weigh over 1,000 pounds.",
            endangeredStatus: .vulnerable,
            habitat: .wetland,
            funFacts: [
                "Crocodiles are some of the oldest reptiles on Earth, with fossil records dating back over 200 million years.",
                "Crocodiles are some of the largest reptiles in the world and can grow up to 20 feet long.",
                "Crocodiles have one of the strongest bites in the animal kingdom, with some species able to exert a force of over 16,000 newtons."
            ],
            photo: UIImage(named: "Crocodile"),
            isAnimalOfTheMonth: false
        ),
        Animal(
            name: "Deer",
            group: .mammals,
            scientificName: "Cervidae",
            description: "Deer are a group of hoofed mammals that are found all over the world. They have slender bodies, long legs, and branching antlers (in males) that are shed and regrown each year. Deer are herbivores and are important prey species for many predators.",
            endangeredStatus: .leastConcern,
            habitat: .forest,
            funFacts: [
                "In some cultures, deer are seen as symbols of grace, gentleness, and spirituality.",
                "Deer are herbivores and primarily feed on grasses, leaves, and other vegetation.",
                "Deer are also very fast runners and can reach speeds of up to 40 miles per hour."
            ],
            photo: UIImage(named: "Deer"),
            isAnimalOfTheMonth: false
        ),
        Animal(
            name: "Fox",
            group: .mammals,
            scientificName: "Vulpes vulpes",
            description: "The red fox is a small carnivorous mammal that is found throughout the Northern Hemisphere. They have a distinctive red coat and a bushy tail, which they use for balance and to keep warm in cold weather. Foxes are highly adaptable and are found in a wide range of habitats, including forests, grasslands, and urban areas.",
            endangeredStatus: .leastConcern,
            habitat: .grassland,
            funFacts: [
                "Foxes have excellent hearing and can locate prey in the dark using sound alone.",
                "Foxes are part of the canine family, and they are closely related to dogs, wolves, and coyotes.",
                "Foxes have excellent hearing and are able to locate their prey by sound, even when they are hidden under snow or leaves."
            ],
            photo: UIImage(named: "Fox"),
            isAnimalOfTheMonth: false
        ),
        Animal(
            name: "Flamingo",
            group: .birds,
            scientificName: "Phoenicopterus",
            description: "Flamingos are a type of wading bird with long legs and a distinctive pink color. They are found in parts of Africa, Asia, the Americas, and Europe, and are known for their unique feeding behavior, which involves filtering food from mud and water using their specialized bills. Some species of flamingos are considered threatened due to habitat loss and hunting.",
            endangeredStatus: .vulnerable,
            habitat: .wetland,
            funFacts: [
                "Flamingos are able to stand on one leg for long periods of time, which helps them conserve body heat and stay warm in cold water.",
                "Flamingos are known for their bright pink feathers, which they get from the pigments in the algae and crustaceans they eat.",
                "Flamingos are filter feeders and use their unique beaks to strain algae and small organisms from the water."
            ],
            photo: UIImage(named: "Flamingo"),
            isAnimalOfTheMonth: false
        ),
        Animal(
            name: "Giraffe",
            group: .mammals,
            scientificName: "Giraffa camelopardalis",
            description: "The giraffe is a tall, long-necked mammal found in parts of Africa. It is the tallest mammal in the world, with males reaching heights of up to 18 feet. Giraffes are herbivores and primarily feed on leaves from trees and bushes. They are currently listed as a species of least concern, but some populations are threatened by habitat loss and poaching.",
            endangeredStatus: .leastConcern,
            habitat: .savanna,
            funFacts: [
                "Giraffes have extremely long necks, which can be up to six feet in length. These necks are supported by only seven vertebrae, which are elongated and specialized to help the giraffe reach leaves high up in trees.",
                "Giraffes are the tallest mammals on Earth and can grow up to 18 feet tall.",
                "Giraffes have very large hearts, which are necessary to pump blood all the way up to their brains and other extremities."
            ],
            photo: UIImage(named: "Giraffe"),
            isAnimalOfTheMonth: false
        ),
        Animal(
            name: "Goldfish",
            group: .fish,
            scientificName: "Carassius auratus",
            description: "Goldfish are a type of freshwater fish that are commonly kept as pets. They are native to East Asia and are known for their bright, metallic coloration and distinctive body shape. Goldfish are omnivores and feed on a variety of plants and small animals. They are not considered endangered in the wild, but some populations of goldfish have become invasive in non-native habitats.",
            endangeredStatus: .leastConcern,
            habitat: .domestic,
            funFacts: [
                "Goldfish are able to see both ultraviolet and infrared light, which allows them to detect prey and navigate through their environment.",
                "Goldfish are known for their bright colors, which are the result of selective breeding by humans.",
                "Goldfish are capable of learning and can be trained to perform tricks, such as swimming through hoops or pushing objects with their noses."
            ],
            photo: UIImage(named: "Goldfish"),
            isAnimalOfTheMonth: false
        ),
        Animal(
            name: "Grass Frog",
            group: .amphibians,
            scientificName: "Ptychadena bibroni",
            description: "The grass frog is a small, semi-aquatic frog found in parts of sub-Saharan Africa. It is known for its distinctive green coloration and can be found in a variety of habitats, including wetlands, forests, and grasslands. Grass frogs are carnivorous and primarily feed on small insects and other invertebrates. Some populations of grass frogs are considered threatened due to habitat loss and pollution.",
            endangeredStatus: .nearThreatened,
            habitat: .wetland,
            funFacts: [
                "Grass frogs are able to change color depending on their surroundings. This helps them blend in with their environment and avoid predators.",
                "Grass frogs can jump up to 3 feet in a single leap, which helps them to escape predators and catch prey.",
                "Grass frogs are able to breathe through their skin, which means they can absorb oxygen even when they are underwater."
            ],
            photo: UIImage(named: "GrassFrog"),
            isAnimalOfTheMonth: false
        ),
        Animal(
            name: "Green Iguana",
            group: .reptiles,
            scientificName: "Iguana iguana",
            description: "The Green Iguana is a large lizard species native to Central and South America. They are often kept as pets and can live up to 20 years. Green Iguanas are herbivores and feed primarily on leaves and fruits.",
            endangeredStatus: .leastConcern,
            habitat: .forest,
            funFacts: [
                "Green Iguanas can communicate with head bobs and arm waves, which are used to establish dominance or to show submission.",
                "Green iguanas are excellent climbers, and can even scale vertical walls using their sharp claws and powerful legs.",
                "Green iguanas can grow up to 6 feet long, including their long tail."
            ],
            photo: UIImage(named: "GreenIguana"),
            isAnimalOfTheMonth: false
        ),
        Animal(
            name: "Hippopotamus",
            group: .mammals,
            scientificName: "Hippopotamus amphibius",
            description: "The Hippopotamus, or hippo, is a large semiaquatic mammal native to sub-Saharan Africa. They are considered one of the most dangerous animals in Africa, despite being herbivores. Hippos spend most of their time in the water and can hold their breath for up to 5 minutes.",
            endangeredStatus: .vulnerable,
            habitat: .river,
            funFacts: [
                "Hippos secrete a reddish oily substance from their skin, which is often called 'blood sweat' but is actually a natural sunscreen and moisturizer.",
                "Hippopotamuses spend most of their time in water to keep their skin cool and hydrated, but they are not good swimmers and usually stay near the surface.",
                "Despite their large size and reputation for being aggressive, hippopotamuses are herbivores and primarily eat grasses and other vegetation."
            ],
            photo: UIImage(named: "Hippopotamus"),
            isAnimalOfTheMonth: false
        ),
        Animal(
            name: "Hyena",
            group: .mammals,
            scientificName: "Crocuta crocuta",
            description: "The Hyena is a carnivorous mammal native to Africa and Asia. They are known for their distinctive laugh-like vocalization and are often portrayed as scavengers, but they are also skilled hunters. Hyenas have a powerful bite and are able to crush bones.",
            endangeredStatus: .leastConcern,
            habitat: .savanna,
            funFacts: [
                "Hyenas are highly social animals and live in groups called clans, which can contain up to 80 individuals!",
                "Hyenas are excellent hunters and are capable of taking down large prey, including wildebeest and zebra.",
                "Hyenas are highly social animals and communicate with a range of vocalizations, including whoops, cackles, and growls."],
            photo: UIImage(named: "Hyena"),
            isAnimalOfTheMonth: false
        ),
        Animal(
            name: "Jaguar",
            group: .mammals,
            scientificName: "Panthera onca",
            description: "The Jaguar is a large cat species native to the Americas. They are powerful hunters and have a distinctive golden-yellow coat with black spots. Jaguars are apex predators and are known to hunt large prey such as deer, tapirs, and caimans.",
            endangeredStatus: .nearThreatened,
            habitat: .forest,
            funFacts: [
                "Jaguars have the strongest bite force of all cats and can bite through turtle shells and caiman armor.",
                "Jaguars are the largest big cat species in the Americas and are known for their powerful jaws and muscular bodies.",
                "Jaguars have a distinctive pattern of spots on their fur, which is unique to each individual and can be used to identify them."
            ],
            photo: UIImage(named: "Jaguar"),
            isAnimalOfTheMonth: false
        ),
        Animal(
            name: "Kangaroo",
            group: .mammals,
            scientificName: "Macropus",
            description: "Kangaroos are marsupial mammals that are native to Australia. They are known for their powerful hind legs, which they use to hop around and their pouches where their young, called joeys, develop and nurse. Kangaroos are herbivores and primarily eat grass.",
            endangeredStatus: .leastConcern,
            habitat: .grassland,
            funFacts: [
                "Kangaroos can jump up to three times their own body length in one bound!",
                "Kangaroos are marsupials, which means that they carry their young in a pouch.",
                "They are the only large animals that use hopping as their primary means of locomotion."
            ],
            photo: UIImage(named: "Kangaroo"),
            isAnimalOfTheMonth: false
        ),
        Animal(
            name: "Koala",
            group: .mammals,
            scientificName: "Phascolarctos cinereus",
            description: "Koalas are marsupial mammals that are native to Australia. They are known for their fluffy ears and furry bodies, and spend most of their time sleeping and eating eucalyptus leaves. Koalas have a unique digestive system that allows them to break down the toxic compounds in eucalyptus leaves.",
            endangeredStatus: .vulnerable,
            habitat: .forest,
            funFacts: [
                "Koalas have fingerprints that are very similar to human fingerprints!",
                "They are arboreal, which means they live in trees, and their diet consists almost entirely of eucalyptus leaves.",
                "Despite their cuddly appearance, koalas are known for their sharp claws and teeth, which they can use to defend themselves if threatened."
            ],
            photo: UIImage(named: "Koala"),
            isAnimalOfTheMonth: false
        ),
        Animal(
            name: "Mouse",
            group: .mammals,
            scientificName: "Mus",
            description: "Mice are small rodents that are found all over the world. They are known for their small size and large ears, and are often considered pests because they can cause damage to crops and buildings. However, mice are also an important part of the ecosystem and play a role in the food chain.",
            endangeredStatus: .leastConcern,
            habitat: .domestic,
            funFacts: [
                "Mice have a very keen sense of smell, and can use it to navigate and communicate with other mice.",
                "They have a very short lifespan, usually only one to two years in the wild.",
                "Mice are nocturnal and are very good at climbing and jumping, which allows them to escape from predators."
            ],
            photo: UIImage(named: "Mouse"),
            isAnimalOfTheMonth: false
        ),
        Animal(
            name: "Octopus",
            group: .molluscs,
            scientificName: "Octopoda",
            description: "Octopuses are marine animals that are known for their eight arms and their ability to change color and shape to blend in with their surroundings. They are intelligent and have been known to use tools and solve puzzles. Octopuses are also considered a delicacy in some parts of the world.",
            endangeredStatus: .leastConcern,
            habitat: .ocean,
            funFacts: [
                "Octopuses have three hearts and blue blood!",
                "They have eight arms, which are lined with suckers that they use to grip and manipulate objects.",
                "Octopuses have excellent eyesight and can see in color, even in very low light conditions."
            ],
            photo: UIImage(named: "Octopus"),
            isAnimalOfTheMonth: false
        ),
        Animal(
            name: "Pyrenean Ibex",
            group: .mammals,
            scientificName: "Capra pyrenaica pyrenaica",
            description: "The Pyrenean Ibex was a species of wild goat that was native to the Pyrenees mountain range in Spain and France. It was well adapted to living in the rugged terrain of the mountains and was known for its impressive horns, which could grow up to 75 cm long. Unfortunately, the Pyrenean Ibex is now extinct, having been hunted to extinction in 2000.",
            endangeredStatus: .extinct,
            habitat: .mountains,
            funFacts: [
                "The Pyrenean Ibex was one of the four subspecies of the Iberian ibex.",
                "It was also known as the bucardo or the Spanish ibex.",
                "The Pyrenean Ibex was once considered a symbol of the Pyrenees mountains and was featured on the coat of arms of the province of Huesca in Spain."
            ],
            photo: UIImage(named: "Pyrenean_Ibex"),
            isAnimalOfTheMonth: false
        ),
        Animal(
            name: "Panther Chameleon",
            group: .reptiles,
            scientificName: "Furcifer pardalis",
            description: "The Panther Chameleon is a colorful reptile species found in Madagascar. They are known for their ability to change color based on their mood, temperature, and light conditions. They primarily feed on insects and are popular in the pet trade. However, the species is threatened by habitat loss and illegal collection for the pet trade.",
            endangeredStatus: .vulnerable,
            habitat: .forest,
            funFacts: [
                "The Panther Chameleon has a long tongue that can extend up to twice the length of its body, which it uses to catch insects.",
                "They have independently moving eyes that allow them to look in two different directions at once.",
                "Male panther chameleons are very territorial and will fight each other for dominance."
            ],
            photo: UIImage(named: "PantherChameleon"),
            isAnimalOfTheMonth: false
        ),
        
        Animal(
            name: "Budgerigar",
            group: .birds,
            scientificName: "Melopsittacus undulatus",
            description: "Budgerigars, also known as budgies, are a small species of parrot native to Australia. They are popular pets due to their playful and social nature, as well as their ability to mimic sounds. In the wild, budgerigars primarily feed on grass seeds and are well adapted to life in arid regions. They are not currently considered endangered.",
            endangeredStatus: .leastConcern,
            habitat: .grassland,
            funFacts: [
                "Budgies are very social birds and enjoy interacting with other budgies. They can even learn to mimic words and phrases if taught properly!",
                "They are popular as pets because of their small size, colorful feathers, and ability to mimic human speech.",
                "They have a unique respiratory system that allows them to fly at high altitudes without getting altitude sickness."
            ],
            photo: UIImage(named: "Budgerigar"),
            isAnimalOfTheMonth: false
        ),
        Animal(
            name: "Brown-throated Three-toed Sloth",
            group: .mammals,
            scientificName: "Bradypus variegatus",
            description: "Brown-throated Three-toed Sloths are a species of slow-moving arboreal mammals found in Central and South America. They have long claws and a slow metabolism, which helps them conserve energy. Brown-throated Three-toed Sloths primarily feed on leaves and are known for their unique upside-down posture. They are threatened by habitat loss and illegal hunting for their meat and fur.",
            endangeredStatus: .leastConcern,
            habitat: .forest,
            funFacts: [
                "Brown-throated Three-toed Sloths are really good at sleeping! They sleep for up to 15 hours each day, which is more than half the day! They even sleep while hanging upside down from trees!",
                "They spend most of their time hanging upside down in trees, where they are well-camouflaged and difficult to spot.",
                "They are nocturnal and have very poor eyesight, but they have an excellent sense of smell and hearing."
            ],
            photo: UIImage(named: "Brown-throated Three-toed Sloth"),
            isAnimalOfTheMonth: false
        ),
        Animal(
            name: "Keel-billed Toucan",
            group: .birds, scientificName: "Ramphastos sulfuratus",
            description: "Keel-billed Toucans are a species of colorful birds found in the tropical forests of Central and South America. They have a large, colorful bill that is used for feeding and attracting mates. Keel-billed Toucans primarily feed on fruits, insects, and small animals. They are currently considered a species of least concern, but they are still threatened by habitat loss and illegal trade.",
            endangeredStatus: .leastConcern,
            habitat: .forest,
            funFacts: [
                "Keel-billed Toucans are very acrobatic birds and can use their large bills to pluck fruit from branches that are too small to support their body weight!",
                "The keel-billed toucan's colorful beak is actually made of keratin, the same material that makes up our hair and nails.",
                "Toucans are social birds and are often found in small flocks of up to six individuals."
            ],
            photo: UIImage(named: "Keel-billed Toucan"),
            isAnimalOfTheMonth: false
        ),
        Animal(
            name: "Zebra",
            group: .mammals,
            scientificName: "Equus quagga",
            description: "The zebra is a horse-like mammal with black and white stripes. They live in grasslands and savannas in Africa and are known for their distinctive stripes and social behavior. They are herbivores and mainly eat grass, leaves, and stems. There are three species of zebra: plains zebra, mountain zebra, and Grevy's zebra.",
            endangeredStatus: .leastConcern,
            habitat: .grassland,
            funFacts: [
                "No two zebras have the same stripe pattern. The stripes help to confuse predators, regulate body temperature, and identify individuals within a herd.",
                "Zebras can run at speeds of up to 40 miles per hour, making them one of the fastest animals on the African savanna.",
                "Zebras are herbivores and can eat up to 90 different species of grasses and other plants."
            ],
            photo: UIImage(named: "Zebra"),
            isAnimalOfTheMonth: false
        ),
        Animal(
            name: "Black Widow Spider",
            group: .insects,
            scientificName: "Latrodectus spp.",
            description: "The black widow spider is a venomous spider with a distinctive red hourglass shape on its abdomen. They are found in temperate regions around the world and are known for their potent venom and tendency to eat their mates after mating. The female is larger than the male and has a more potent venom. The bite of a black widow spider can be dangerous and even lethal in some cases.",
            endangeredStatus: .leastConcern,
            habitat: .forest,
            funFacts: [
                "Despite their reputation, black widow spiders are not aggressive and usually only bite when threatened. The venom of a black widow spider is 15 times stronger than that of a rattlesnake, but they inject a much smaller amount, making their bites less deadly than many people think.",
                "Black widow spiders spin webs that are strong and sticky, which helps them to catch prey.",
                "The female black widow spider is larger than the male and is the one that is most often seen."
            ],
            photo: UIImage(named: "BlackWidowSpider"),
            isAnimalOfTheMonth: false
        ),
        Animal(
            name: "Otters",
            group: .mammals,
            scientificName: "Lutrinae",
            description: "Otters are semi-aquatic mammals that live in rivers, lakes, and coastal areas around the world. They are known for their playful behavior and social nature, and are excellent swimmers and divers. They have webbed feet, dense fur that keeps them warm in cold water, and a streamlined body shape. There are 13 species of otters, ranging in size from the small river otter to the giant otter.",
            endangeredStatus: .leastConcern,
            habitat: .river,
            funFacts: [
                "Otters are one of the few mammals that use tools. They use rocks to break open shellfish and other hard-shelled prey.",
                "Otters have thick fur coats that help keep them warm in cold water.",
                "Otters are playful animals and are often seen playing games with each other, such as sliding down mud banks or throwing objects in the air."
            ],
            photo: UIImage(named: "Otters"),
            isAnimalOfTheMonth: false
        ),
        Animal(
            name: "Monarch Butterfly",
            group: .insects,
            scientificName: "Danaus plexippus",
            description: "The Monarch Butterfly is a well-known insect species found in North America. They are known for their distinctive orange and black wings and their long-distance migration patterns. Monarch Butterflies primarily feed on nectar from flowers and lay their eggs on milkweed plants. They are threatened by habitat loss and the use of pesticides.",
            endangeredStatus: .vulnerable,
            habitat: .meadow,
            funFacts: [
                "Monarch Butterflies undertake a long-distance migration of up to 3,000 miles from Canada to Mexico each year!",
                "Monarch butterflies have bright orange wings with black and white markings, which warn predators that they are toxic.",
                "Monarch butterflies only eat milkweed plants, which contain toxins that make the butterflies toxic to predators."
            ],
            photo: UIImage(named: "MonarchButterfly"),
            isAnimalOfTheMonth: false
        ),
        Animal(
            name: "Horse",
            group: .mammals,
            scientificName: "Equus ferus caballus",
            description: "The horse is a domesticated hoofed mammal with a long mane and tail, and a strong, muscular body. They are used for transportation, racing, and work, as well as for their meat and milk. Horses are known for their speed, agility, and intelligence.",
            endangeredStatus: .leastConcern,
            habitat: .grassland,
            funFacts: [
                "Horses have the largest eyes of any land mammal, and their eyes are positioned on the sides of their head, giving them almost 360-degree vision.",
                "Horses can sleep both lying down and standing up.",
                "The teeth of a horse never stop growing."
            ],
            photo: UIImage(named: "Horse"), isAnimalOfTheMonth: false),
        Animal(
            name: "Sheep",
            group: .mammals,
            scientificName: "Ovis aries",
            description: "Sheep are domesticated mammals that are kept for their wool, meat, and milk. They are found all over the world and come in many different breeds. Sheep are herbivores and feed on grasses and other vegetation. They are social animals and are often kept in flocks.",
            endangeredStatus: .leastConcern,
            habitat: .domestic,
            funFacts: [
                "Sheep have excellent memories and are able to recognize and remember up to 50 different individuals for years.",
                "Sheep have a unique digestive system with four chambers in their stomach that helps them to extract nutrients from tough plants.",
                "Sheep have a natural instinct to follow the sheep in front of them and have been known to blindly follow each other off cliffs."
            ],
            photo: UIImage(named: "Sheep"),
            isAnimalOfTheMonth: false
        ),
        Animal(
            name: "Cow",
            group: .mammals,
            scientificName: "Bos taurus",
            description: "Cows are domesticated mammals that are commonly raised for their meat, milk, and hides. They have a distinctive black and white or brown and white coat, with a large body and short legs. Cows are herbivores and feed on grasses, hay, and other vegetation. They are social animals and can form close bonds with their herd mates. Cows have been domesticated for thousands of years and are an important source of food and other products for humans.",
            endangeredStatus: .leastConcern,
            habitat: .domestic,
            funFacts: [
                "Cows have an acute sense of smell and can detect scents up to 6 miles away.",
                "Cows can produce up to 200,000 glasses of milk in their lifetime.",
                "Cows have best friends and become stressed when they are separated."
            ],
            photo: UIImage(named: "Cow"),
            isAnimalOfTheMonth: false
        ),
        Animal(
            name: "Goat",
            group: .mammals,
            scientificName: "Capra aegagrus hircus",
            description: "The domestic goat is a subspecies of the wild goat and is one of the oldest domesticated animals. They are found all over the world and are commonly used for their milk, meat, and wool. Goats are very social animals and are known for their playful and curious personalities. They are herbivores and have a unique digestive system that allows them to digest tough plant material.",
            endangeredStatus: .leastConcern,
            habitat: .domestic,
            funFacts: [
                "Goats have rectangular pupils, which give them a wide field of vision and excellent depth perception. This helps them navigate the rocky terrain in their natural habitats.",
                "Goats can climb trees and mountains with ease.",
                "Goats have accents that differ from region to region."
            ],
            photo: UIImage(named: "Goat"),
            isAnimalOfTheMonth: false
        ),
        Animal(
            name: "Pig",
            group: .mammals,
            scientificName: "Sus scrofa domesticus",
            description: "Pigs are domesticated animals that are raised for their meat, lard, and leather. They are intelligent, social animals that are capable of forming complex social relationships. Pigs are omnivores and will eat a variety of foods, including vegetables, fruits, and grains. They are also known for their sense of smell, which is highly developed and allows them to locate food even underground. In some cultures, pigs are considered a symbol of wealth and prosperity.",
            endangeredStatus: .leastConcern,
            habitat: .domestic,
            funFacts: [
                "Pigs are very social animals and will often form close bonds with other pigs.",
                "Pigs are very intelligent animals and are often compared to dogs in terms of their cognitive abilities.",
                "Pigs have an excellent sense of smell and are used in some countries to hunt for truffles, a type of edible mushroom that grows underground."
            ],
            photo: UIImage(named: "Pig"),
            isAnimalOfTheMonth: false
        )
    ]
    
    //Get Animals Sorted By Name
    var sortedAnimalsByName: [Animal] {
        animals.sorted { $0.name < $1.name }
    }
    
    //Get all Critically Endangered Animals
    var criticallyEndangeredAnimals: [Animal] {
        animals.filter { $0.endangeredStatus == .criticallyEndangered }
    }
    
    //Get all Polar Animals
    var polarAnimals: [Animal] {
        animals.filter { $0.habitat == .arctic || $0.habitat == .polar || $0.habitat == .tundra}
    }
    
    //Get all Mammals Animals
    var mammalsAnimals: [Animal] {
        animals.filter { $0.group == .mammals }
    }
    
    //Get all Birds
    var birdsAnimals: [Animal] {
        animals.filter { $0.group == .birds }
    }
    
    //Get all Fish
    var fishAnimals: [Animal] {
        animals.filter { $0.group == .fish }
    }
    
    //Get all Cats
    var catsAnimals: [Animal] {
        animals.filter {
            ($0.name.contains("Panther") || $0.name.contains("Lion") || $0.name.contains("Cat") || $0.name.contains("Tiger") || $0.name.contains("Leopard") || $0.name.contains("Lynx")) && !$0.name.contains("Chameleon")
        }
    }
    
    //Get the Animal of the Month
    var animalOfTheMonth: Animal {
        animals.first { $0.isAnimalOfTheMonth == true }!
    }
    
    //Get Animal identified by the Animal Identifier
    func findAnimalVision(withName name: String) -> Animal? {
        return animals.first { $0.name == name }
    }
}
