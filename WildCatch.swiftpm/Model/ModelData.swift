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
            funFact: "The Iberian Lynx is an excellent climber and has been observed climbing trees up to 5 meters in height, using its sharp claws and muscular body. This is a unique ability among wild cat species.",
            photo: UIImage(named: "IberianLynx"), //photograph by Diego Delso, licensed under CC BY-SA 4.0,
            isAnimalOfTheMonth: true
        ),
        Animal(
            name: "Amur Leopard",
            group: .mammals,
            scientificName: "Panthera pardus orientalis",
            description: "The Amur Leopard is a big cat species native to the Amur region of eastern Russia and northeastern China. They have a pale golden coat with black spots, and are well adapted to life in cold climates. The species is critically endangered, with only around 100 individuals remaining in the wild due to habitat loss and poaching. Conservation efforts are underway to try and save the species from extinction.",
            endangeredStatus: .criticallyEndangered,
            habitat: .forest,
            funFact: "The Amur Leopard is an excellent swimmer and has been observed crossing rivers up to 9 meters wide. This is a unique ability among big cat species.",
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
            funFact: "Javan Rhinos are solitary animals and are rarely seen in groups, except for mothers with their young. They are also excellent swimmers and are known to cross rivers and even swim between islands.",
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
            funFact: "African Forest Elephants have a unique way of communicating with each other. They use a rumbling sound that is so low-pitched it is inaudible to humans and can travel long distances through the ground.",
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
            funFact: "The Sumatran Orangutan has a unique culture and exhibits tool use, using sticks to extract insects and honey from trees. Different populations have been observed using different tools, which are passed down through generations.",
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
            funFact: "The Polar Bear has a thick layer of fat and a dense fur coat that helps it survive in the extreme cold. In fact, their fur is not actually white, but is made up of transparent hollow tubes that reflect light, making it appear white.",
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
            funFact: "Male walruses can weigh up to 1.5 tons and have tusks that can grow up to 1 meter in length. They use their tusks for a variety of tasks, including breaking through ice, defending themselves from predators, and helping them haul themselves onto land.",
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
            funFact: "Adélie Penguins are named after the wife of French explorer Jules Dumont d'Urville, who discovered the species in 1840 during an expedition to Antarctica.",
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
            funFact: "Amazon River Dolphins are social animals and often form groups of up to 10 individuals. They communicate with each other using a variety of sounds, including whistles, clicks, and pulsed sounds.",
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
            funFact: "Cats are one of the most popular pets in the world, and there are over 600 million domestic cats worldwide.",
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
            funFact: "Dogs have been domesticated for over 15,000 years, and have evolved to have a close relationship with humans.",
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
            funFact: "Dolphins communicate with each other using a variety of sounds, including clicks, whistles, and body language. They also have a highly developed sense of echolocation, which they use to navigate and find prey.",
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
            funFact: "Emperor Penguins are famous for their parental care, with males incubating the eggs on their feet for up to two months while females go out to sea to feed. They also have the longest breeding cycle of any bird species, with the entire process taking around 9 months.",
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
            funFact: "Galápagos Penguins are able to survive in the warm waters around the equator thanks to cool ocean currents and the availability of food. They are also unique in that they mate and breed throughout the year, rather than just during a specific season.",
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
            funFact: "Despite their large size and powerful jaws, Giant Pandas have a diet that is almost exclusively vegetarian, consisting of bamboo shoots and leaves. They can eat up to 30 kg of bamboo in a single day!",
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
            funFact: "Lions are the only truly social cats, living in prides that can consist of up to 30 individuals. Male lions defend the pride's territory, while females do most of the hunting.",
            photo: UIImage(named: "Lion"),
            isAnimalOfTheMonth: false
        ),
        Animal(
            name: "Black Panther",
            group: .bigCats,
            scientificName: "Panthera pardus",
            description: "The black panther is a melanistic color variant of the leopard species native to Africa and Asia. They have black fur with faint spots visible in certain lighting. Black panthers are stealthy hunters and have excellent night vision, which helps them hunt in low-light conditions. The species is threatened by habitat loss, poaching, and retaliatory killings.",
            endangeredStatus: .vulnerable,
            habitat: .forest,
            funFact: "The black panther's black fur is caused by melanism, a genetic condition that produces an excess of pigment. This gives them a distinctive appearance that has made them a cultural icon around the world.",
            photo: UIImage(named: "BlackPanther"),
            isAnimalOfTheMonth: false
        ),
        Animal(
            name: "Mountain Gorilla",
            group: .mammals,
            scientificName: "Gorilla beringei beringei",
            description: "The Mountain Gorilla is a critically endangered primate species that lives in the mountain forests of central Africa. They are the largest living primates and have long, thick black fur that helps them stay warm in their chilly mountain habitat. Mountain Gorillas live in groups led by a dominant male called a silverback, and they primarily feed on plant material like leaves, stems, and bamboo shoots. They are threatened by habitat loss, poaching, and disease.",
            endangeredStatus: .criticallyEndangered,
            habitat: .forest,
            funFact: "Mountain Gorillas are some of the closest living relatives to humans, sharing over 98% of our DNA. Despite their size and strength, they are gentle animals that are known to show affection and play with their young.",
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
            funFact: "European Rabbits are known for their incredible agility and speed, and they can run at speeds of up to 45 kilometers per hour to evade predators. They are also important in many cultures as a symbol of fertility and abundance.",
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
            funFact: "Despite their name and appearance, Red Pandas are not closely related to Giant Pandas. They are actually more closely related to raccoons and weasels. In fact, their scientific name, Ailurus fulgens, means 'shining cat'.",
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
            funFact: "The Scimitar Oryx was once widespread across North Africa, but due to overhunting and habitat loss, it became extinct in the wild in 2000. However, conservation efforts have successfully reintroduced captive-bred individuals back into their former range in Chad and Tunisia.",
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
            funFact: "Female sea turtles return to the same beach where they were born to lay their eggs. Some species of sea turtles can travel thousands of miles to get to their nesting beaches.",
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
            funFact: "Snow Leopards are excellent climbers and can leap up to 20 feet in a single bound.",
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
            funFact: "Spix's Macaw was the inspiration for the character Blu in the animated movie Rio.",
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
            funFact: "Sunda Tigers are excellent swimmers and are known to hunt fish in rivers and streams.",
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
            funFact: "Humpback Whales can sing for hours on end and their songs can travel for great distances through the ocean. The purpose of their songs is still unknown, but they are thought to be related to courtship and communication.",
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
            funFact: "Hamsters have cheek pouches that they use to carry food back to their burrows. Their pouches can stretch to three times the size of their head!",
            photo: UIImage(named: "DomesticHamster"),
            isAnimalOfTheMonth: false
        ),
        
        Animal(
            name: "Woolly Mammoth",
            group: .mammals,
            scientificName: "Mammuthus primigenius",
            description: "The Woolly Mammoth was a large, shaggy-haired mammal that roamed the Earth during the last Ice Age. They had long, curved tusks that could grow up to 15 feet in length, and were adapted to living in cold, snowy environments. Woolly Mammoths are thought to have gone extinct around 4,000 years ago, likely due to a combination of climate change and human hunting.",
            endangeredStatus: .extinct,
            habitat: .tundra,
            funFact: "Woolly Mammoths were closely related to modern-day elephants, and shared many of the same physical and behavioral traits.",
            photo: UIImage(named: "WoollyMammoth"), // //photograph by Thomas Quine, licensed under CC BY 2.0,
            isAnimalOfTheMonth: false
        ),
        
        Animal(
            name: "Dodo Bird",
            group: .birds,
            scientificName: "Raphus cucullatus",
            description: "The Dodo Bird was a flightless bird that was endemic to the island of Mauritius in the Indian Ocean. It had a large, curved beak and a plump, round body covered in soft feathers. Dodos were hunted to extinction by humans in the late 17th century, and are now considered one of the most famous examples of human-caused extinction.",
            endangeredStatus: .extinct,
            habitat: .forest,
            funFact: "Dodos were known for their friendly and docile nature, and were easy prey for the human hunters who colonized Mauritius.",
            photo: UIImage(named: "DodoBird"),
            isAnimalOfTheMonth: false
        ),
        
        Animal(
            name: "Saber-Toothed Tiger",
            group: .mammals,
            scientificName: "Smilodon fatalis",
            description: "The Saber-Toothed Tiger was a large, predatory cat that lived during the Pleistocene Epoch. It was characterized by its long, saber-like teeth, which could grow up to 7 inches in length. Saber-Toothed Tigers are thought to have gone extinct around 10,000 years ago, likely due to a combination of climate change and competition with other predators.",
            endangeredStatus: .extinct,
            habitat: .grassland,
            funFact: "Despite its name, the Saber-Toothed Tiger was not actually a tiger. It was more closely related to modern-day cats, and was part of a distinct family of prehistoric cats known as the Machairodonts.",
            photo: UIImage(named: "SaberToothedTiger"),
            isAnimalOfTheMonth: false
        ),
        Animal(name: "Great Auk",
               group: .birds,
               scientificName: "Pinguinus impennis",
               description: "The Great Auk was a flightless bird that was found in the North Atlantic Ocean. It had a distinctive black-and-white coloration, and was about the size of a penguin. Great Auks were hunted to extinction in the mid-19th century for their meat, feathers, and oil, and are now considered one of the most iconic examples of human-caused extinction.",
               endangeredStatus: .extinct,
               habitat: .ocean,
               funFact: "Great Auks were known for their strong swimming abilities, and were adapted to life in the cold, choppy waters of the North Atlantic.",
               photo: UIImage(named: "GreatAuk"),
               isAnimalOfTheMonth: false),
        
        Animal(name: "Blue Shark",
               group: .fish,
               scientificName: "Prionace glauca",
               description: "The Blue Shark is a large and slender shark species that is found in deep waters around the world. They are known for their striking blue coloration and their long, pointed snout. Blue Sharks are an important species for commercial fishing, but their populations have declined due to overfishing and bycatch.",
               endangeredStatus: .nearThreatened,
               habitat: .ocean,
               funFact: "Blue Sharks are known to swim in large groups, or schools, sometimes numbering in the hundreds or even thousands of individuals.",
               photo: UIImage(named: "BlueShark"),
               isAnimalOfTheMonth: false),
        
        Animal(name: "Brown Bear",
               group: .mammals,
               scientificName: "Ursus arctos",
               description: "The Brown Bear is a large bear species found throughout much of North America, Europe, and Asia. They are known for their shaggy fur, large size, and distinctive hump on their shoulders. Brown Bears are excellent swimmers and climbers, and are often seen fishing in rivers for salmon.",
               endangeredStatus: .leastConcern,
               habitat: .forest,
               funFact: "Brown Bears can run at speeds of up to 30 miles per hour, and can swim for long distances in water.",
               photo: UIImage(named: "BrownBear"),
               isAnimalOfTheMonth: false),
        
        Animal(name: "Capybara",
               group: .mammals,
               scientificName: "Hydrochoerus hydrochaeris",
               description: "The Capybara is the largest rodent species in the world, and is native to South America. They are known for their large size, webbed feet, and their love of water. Capybaras are social animals and are often found living in large groups near rivers and lakes.",
               endangeredStatus: .leastConcern,
               habitat: .wetland,
               funFact: "Capybaras have been known to form close bonds with other animals, including birds and even domestic dogs.",
               photo: UIImage(named: "Capybara"),
               isAnimalOfTheMonth: false),
        Animal(
            name: "Cheetah",
            group: .mammals,
            scientificName: "Acinonyx jubatus",
            description: "The Cheetah is a large and fast land animal found primarily in Africa. They are known for their distinctive spotted fur and their incredible speed, which allows them to run at speeds of up to 75 miles per hour. Cheetahs are an endangered species due to habitat loss and hunting.",
            endangeredStatus: .endangered,
            habitat: .grassland,
            funFact: "Cheetahs have been trained for hunting by humans for thousands of years, and were often kept as pets by ancient Egyptian royalty.",
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
            funFact: "Clownfish are hermaphroditic, meaning they are born with both male and female reproductive organs.",
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
            funFact: "Common garter snakes are known to secrete a foul-smelling musk when they feel threatened, which can deter predators.",
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
            funFact: "Crocodiles are some of the oldest reptiles on Earth, with fossil records dating back over 200 million years.",
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
            funFact: "In some cultures, deer are seen as symbols of grace, gentleness, and spirituality.",
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
            funFact: "Foxes have excellent hearing and can locate prey in the dark using sound alone.",
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
            funFact: "Flamingos are able to stand on one leg for long periods of time, which helps them conserve body heat and stay warm in cold water.",
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
            funFact: "Giraffes have extremely long necks, which can be up to six feet in length. These necks are supported by only seven vertebrae, which are elongated and specialized to help the giraffe reach leaves high up in trees.",
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
            funFact: "Goldfish are able to see both ultraviolet and infrared light, which allows them to detect prey and navigate through their environment.",
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
            funFact: "Grass frogs are able to change color depending on their surroundings. This helps them blend in with their environment and avoid predators.",
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
            funFact: "Green Iguanas can communicate with head bobs and arm waves, which are used to establish dominance or to show submission.",
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
            funFact: "Hippos secrete a reddish oily substance from their skin, which is often called 'blood sweat' but is actually a natural sunscreen and moisturizer.",
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
            funFact: "Hyenas are highly social animals and live in groups called clans, which can contain up to 80 individuals!",
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
            funFact: "Jaguars have the strongest bite force of all cats and can bite through turtle shells and caiman armor.",
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
            funFact: "Kangaroos can jump up to three times their own body length in one bound!",
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
            funFact: "Koalas have fingerprints that are very similar to human fingerprints!",
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
            funFact: "Mice have a very keen sense of smell, and can use it to navigate and communicate with other mice.",
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
            funFact: "Octopuses have three hearts and blue blood!",
            photo: UIImage(named: "Octopus"),
            isAnimalOfTheMonth: false
        ),
        
        Animal(
            name: "Panther Chameleon",
            group: .reptiles,
            scientificName: "Furcifer pardalis",
            description: "The Panther Chameleon is a colorful reptile species found in Madagascar. They are known for their ability to change color based on their mood, temperature, and light conditions. They primarily feed on insects and are popular in the pet trade. However, the species is threatened by habitat loss and illegal collection for the pet trade.",
            endangeredStatus: .vulnerable,
            habitat: .forest,
            funFact: "The Panther Chameleon has a long tongue that can extend up to twice the length of its body, which it uses to catch insects.",
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
            funFact: "Budgies are very social birds and enjoy interacting with other budgies. They can even learn to mimic words and phrases if taught properly!",
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
            funFact: "Brown-throated Three-toed Sloths are really good at sleeping! They sleep for up to 15 hours each day, which is more than half the day! They even sleep while hanging upside down from trees!",
            photo: UIImage(named: "Brown-throated Three-toed Sloth"), //Foto de Deb Dowd na Unsplash
            isAnimalOfTheMonth: false
        ),
        Animal(
            name: "Keel-billed Toucan",
            group: .birds, scientificName: "Ramphastos sulfuratus",
            description: "Keel-billed Toucans are a species of colorful birds found in the tropical forests of Central and South America. They have a large, colorful bill that is used for feeding and attracting mates. Keel-billed Toucans primarily feed on fruits, insects, and small animals. They are currently considered a species of least concern, but they are still threatened by habitat loss and illegal trade.",
            endangeredStatus: .leastConcern,
            habitat: .forest,
            funFact: "Keel-billed Toucans are very acrobatic birds and can use their large bills to pluck fruit from branches that are too small to support their body weight!",
            photo: UIImage(named: "Keel-billed Toucan"), //Foto de Rico Meier na Unsplash
            isAnimalOfTheMonth: false
        ),
        Animal(
            name: "Zebra",
            group: .mammals,
            scientificName: "Equus quagga",
            description: "The zebra is a horse-like mammal with black and white stripes. They live in grasslands and savannas in Africa and are known for their distinctive stripes and social behavior. They are herbivores and mainly eat grass, leaves, and stems. There are three species of zebra: plains zebra, mountain zebra, and Grevy's zebra.",
            endangeredStatus: .leastConcern,
            habitat: .grassland,
            funFact: "No two zebras have the same stripe pattern. The stripes help to confuse predators, regulate body temperature, and identify individuals within a herd.",
            photo: UIImage(named: "Zebra"), //Foto de Ron Dauphin na Unsplash
            isAnimalOfTheMonth: false
        ),
        Animal(
            name: "Black Widow Spider",
            group: .insects,
            scientificName: "Latrodectus spp.",
            description: "The black widow spider is a venomous spider with a distinctive red hourglass shape on its abdomen. They are found in temperate regions around the world and are known for their potent venom and tendency to eat their mates after mating. The female is larger than the male and has a more potent venom. The bite of a black widow spider can be dangerous and even lethal in some cases.",
            endangeredStatus: .leastConcern,
            habitat: .forest,
            funFact: "Despite their reputation, black widow spiders are not aggressive and usually only bite when threatened. The venom of a black widow spider is 15 times stronger than that of a rattlesnake, but they inject a much smaller amount, making their bites less deadly than many people think.",
            photo: UIImage(named: "BlackWidowSpider"), //Foto de Tom Sid na Unsplash
            isAnimalOfTheMonth: false
        ),
        Animal(
            name: "Otters",
            group: .mammals,
            scientificName: "Lutrinae",
            description: "Otters are semi-aquatic mammals that live in rivers, lakes, and coastal areas around the world. They are known for their playful behavior and social nature, and are excellent swimmers and divers. They have webbed feet, dense fur that keeps them warm in cold water, and a streamlined body shape. There are 13 species of otters, ranging in size from the small river otter to the giant otter.",
            endangeredStatus: .leastConcern,
            habitat: .river,
            funFact: "Otters are one of the few mammals that use tools. They use rocks to break open shellfish and other hard-shelled prey.",
            photo: UIImage(named: "Otters"), //Photo By Anchor Lee On Unsplash - License: Unsplash License
            isAnimalOfTheMonth: false
        ),
        Animal(
            name: "Monarch Butterfly",
            group: .insects,
            scientificName: "Danaus plexippus",
            description: "The Monarch Butterfly is a well-known insect species found in North America. They are known for their distinctive orange and black wings and their long-distance migration patterns. Monarch Butterflies primarily feed on nectar from flowers and lay their eggs on milkweed plants. They are threatened by habitat loss and the use of pesticides.",
            endangeredStatus: .vulnerable,
            habitat: .meadow,
            funFact: "Monarch Butterflies undertake a long-distance migration of up to 3,000 miles from Canada to Mexico each year!",
            photo: UIImage(named: "MonarchButterfly"), //Photo by Erin Minuskin on Unsplash  - License: Unsplash License
            isAnimalOfTheMonth: false
        ),
        Animal(name: "Horse", group: .mammals, scientificName: "Equus ferus caballus", description: "The horse is a domesticated hoofed mammal with a long mane and tail, and a strong, muscular body. They are used for transportation, racing, and work, as well as for their meat and milk. Horses are known for their speed, agility, and intelligence.", endangeredStatus: .leastConcern, habitat: .grassland, funFact: "Horses have the largest eyes of any land mammal, and their eyes are positioned on the sides of their head, giving them almost 360-degree vision.", photo: UIImage(named: "Horse"), isAnimalOfTheMonth: false)
    ]
    
    //Get all Critically Endangered Animals
    var criticallyEndangeredAnimals: [Animal] {
        animals.filter { $0.endangeredStatus == .criticallyEndangered }
    }
    
    //Get all Polar  Animals
    var polarAnimals: [Animal] {
        animals.filter { $0.habitat == .arctic || $0.habitat == .polar || $0.habitat == .tundra}
    }
    
    //Get all Extinct Animals
    var memoriamAnimals: [Animal] {
        animals.filter { $0.endangeredStatus == .extinct }
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
