library(maps)
library(ggplot2)

events <- tribble(
  ~ place, ~ lat, ~ long,
  "Budapest",47.497912, 19.040235, 
  "Cape Town",-33.924869, 18.424055, 
  "Puerto Rico",18.220833, -66.590149, 
  "Cardiff",51.481581, -3.179090, 
  "Amsterdam",52.370216, 4.895168, 
  "Belgrade",44.786568, 20.448922, 
  "Washington",38.907192, -77.036871
)
map_data("world") %>% 
  ggplot(aes(long, lat, group=group)) +
  geom_polygon(fill="white", colour="gray") +
  geom_point(data = events, aes(long, lat, group = NULL), colour = "#3265B0", size = 2) + 
  guides(fill=FALSE) +
  coord_quickmap() +
  theme_void()