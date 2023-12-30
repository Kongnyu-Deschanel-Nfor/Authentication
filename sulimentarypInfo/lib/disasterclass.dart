class Disaster {
  String title;
  String description;
  List<String> images;
  String descriptionTitle;

  Disaster({
    required this.title,
    required this.description,
    required this.images,
    required this.descriptionTitle,
  });
}

List<Disaster> disasters = [
  Disaster(
    title: "Floods",
    description: """ 
    On 18 March 2023, torrential rains in Buea town in the South-West region, led to flash floods and mudslides from Mount Cameroon to some communities at the foot of the mountain, causing several casualties among residents of Buea. Humanitarian partners, including some United Nations agencies, cluster representatives, national and international NGOs, informed authorities and conducted a joint mission on 19 March, facilitated by OCHA, to the affected areas for an overview of the situation and an assessment of the most urgent needs. The regional government including municipal authorities mobilized their personnel conducting
     needs assessment and registration of affected communities.
Impacts
Preliminary findings revealed that two persons
 are dead, four were hospitalized and one is reported 
 missing. An estimated 150 households (900 individuals)
  are affected in Bova, Bokwai, Buea-town neighborhood 
  and homes around the waterway are being vacated by families
   who fear more devastation if it rains again. Some homes lost
    their livelihood including livestock, stored grains, and 
    crops in their gardens/farms. Local authorities have also initiated the demolition of some houses built on the waterways in the areas affected by floods. About 120 businesses at the Buea-town market were affected. Personal belongings were lost or damaged including civil documents, core relief items, and household furniture. The water catchment in Buea-town was also destroyed and water supply pipes were broken in the affected communities. This is affecting about 500 households (3,000 people). Water, sanitation and hygiene (WASH), shelter, non-food items (NFI), health, and protection are the most urgent needs of the affected population.
    """,
    images: ["images/fld.jpeg", "images/flood2.webp", "images/flood3.webp", "images/flood4.jpg"],
    descriptionTitle: "Past Information About Flood in Buea",
  ),
  Disaster(
    title: "Earthquakes",
    description: """
      Magnitude 4.7 Earthquake Struck 20 km WNW of Buea, Cameroon on September 20, 1990 12:13:25
Last Updated: 2020-08-29 00:09:09
On September 20, 1990 12:13:25 an earthquake with magnitude of 4.7 on the richter scale hit 20 km WNW of Buea, Cameroon. The earthquake originated at a depth of approximately 10.0 kilometers below the Earth's surface on longitude 9.062° and latitude 4.208°. According to documented reports people felt the earth quake, No tsunami was triggered due to the earthquake.

The earthquake that appeared on September 20, 1990 12:13:25 had a magnitude of 4.7 on the richter scale. Which is considered to be a minor earthquake and is often felt but causes little to no damage.

Shallow earthquakes are considered between 0 and 70 km deep, while intermediate earthquakes range from 70 - 300 km deep and deep earthquakes are between 300 - 700 km deep.

Are shallow earthquakes more destructive?
Shallow quakes generally tend to be more damaging than deeper quakes. Seismic waves from deep quakes have to travel farther to the surface, losing energy along the way.
  
    """,
    images: ["images/earthquake.jpg", "images/eq1.jpg","images/eq2.jpg","images/eq3.jpg"],
    descriptionTitle: "Past Information About Earth Quake in Buea",
  ),
  Disaster(
    title: "Volcanoes",
    description:"""
    Mount Cameroon (4,095 m high and with a volume of ∼1,200 km3) is one of the most active volcanoes in Africa, having erupted seven times in the last 100 years. This stratovolcano of basanite and hawaiite lavas has an elliptical shape, with over a hundred cones around its flanks and summit region aligned parallel to its NE-SW-trending long axis. The 1999 (28 March–22 April) eruption was restricted to two sites: ∼2,650 m (site 1) and ∼1,500 m (site 2). Similarly, in the eruption in 2000 (28 May–19 June), activity occurred at two sites: ∼4,095 m (site 1) and ∼3,300 m (site 2). During both eruptions, the higher vents were more explosive, with strombolian activity, while the lower vents were more effusive. Accordingly, most of the lava (∼8×107 m3 in 1999 and ∼6×106 m3 in 2000) was emitted from the lower sites. The 1999–2000 lavas are predominantly basanites with low Ni (5–79 ppm), Cr (40–161 ppm) and mg numbers (34–40). Olivine (Fo77–85, phenocrysts and Fo68–72, microlites), clinopyroxene (Wo47En41Fs10 to Wo5lEn34FS15), plagioclase (An49–67) and titanomagnetite are the principal phenocryst and groundmass phases. The lavas contain xenocrysts of olivine and clinopyroxene, which are interpreted as fragments of intrusive rocks disrupted by magma ascent. Major and trace element characteristics point to early fractionation of olivine. The clinopyroxenes (Al2O3 1.36–7.83 wt%) have high Aliv/Alvi ratios (1.3–1.8) and are rich in TiO2, characteristics typical of low pressure clinopyroxenes. Geochemical differences between the 1999–2000 lavas and those from previous eruptions, such as higher Nb/Zr of the former, suggest that different eruptions discharged magmas that evolved differently in space and time. Geophysical and petrological data indicate that these fractionated magmas originated just below the geophysical Moho (at 20–22 km) in the lithospheric mantle. During ascent, the magmas disrupted intrusions and earlier magma pockets. The main ascent path is below the summit, where newly arrived magma degasses. Degassed
     magma simultaneously intrudes the flank rift zones where most lava is extruded.
    """,
    images: ["images/volca.png", "images/vol1.jpg","images/vol2.jpg","images/vol3.jpg"],
    descriptionTitle: "Past Information About Volcanoes in Buea",
  ),
  Disaster(
    title: "Bush Fires",
    description:"""
Bushfires are a natural, essential and complex part of the Australian environment and have been for thousands of years. Bushfires can significantly impact on lives, property and the environment. 

The Australian Climate Service draws together experts from across the Australian Government’s leading science agencies to analyse and curate data and intelligence. This creates new information on natural disaster risks and impacts that inform and support decision making. 

The Australian Climate Service supports the National Emergency Management Agency (NEMA) which considers all natural hazards and the interaction between hazards in preparing for, and responding to, climate change. 

As a starting point we have provided a curated description of bushfires below. Over time we will expand on how the impacts of bushfires are changing and share our understanding of climate risks, including who or what is exposed and vulnerable to impacts of these events. 
    """,
    images: ["images/bushfires.jpg", "images/bf1.jpg","images/bf2.jpg","images/bf3.jpg"],
    descriptionTitle: "Past Information About Bush Fires in Buea",
  ),
  Disaster(
    title: "Land Slides",
    description:"""
   Flooding and landslides impacted Buea, Southwest Region, overnight March 18/19. Damage to property and casualties have been reported. Multiple road routes have reportedly been flooded.

Further heavy rainfall, conducive to additional flooding and landslides, is forecast through March 19. Disruptions to electricity and telecommunications services are possible where significant flooding or landslides impact utility networks. Floodwaters and debris flows may render some bridges, rail networks, or roadways impassable, impacting overland travel in and around affected areas. Ponding on road surfaces could cause hazardous driving conditions on regional highways. Authorities could 
temporarily close some low-lying routes that become inundated by floodwaters.
    """,
    images: ["images/landslide.jpg", "images/ls1.jpg","images/ls2.jpg","images/ls3.jpg"],
    descriptionTitle: "Past Information About Land Slide in Buea",
  ),
  Disaster(
    title: "Industrial Fires",
    description:"""
A fire outbreak occurred on December 6, 2023, at Chariot Hotel in Buea. The fire consumed the hotel’s warehouse, where invaluable supplies and renovation materials were stored. The estimated loss was FCFA 2.5 billion 1.

A fire incident also occurred on December 23, 2021, at the Wonya Lyonga neighborhood in Buea Town. Five shops burned down, and at least 50 million francs CFA was recorded as lost in terms of goods 2.

    """,
    images: ["images/industrialfires.jpg", "images/if1.jpg","images/if2.jpg","images/if3.jpg"],
    descriptionTitle: "Past Information About Industrial Fires in Buea",
  ),
  // Add more instances here if needed
];