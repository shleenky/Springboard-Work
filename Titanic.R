# titanic is avaliable in your workspace


# Check out the structure of titanic
str(titanic)



# Use ggplot() for the first instruction

# distribution of sexes within the classes of the ship

ggplot(titanic, aes(factor(Pclass), fill = factor(Sex))) +

  geom_bar(position = "dodge")




# Use ggplot() for the second instruction

# estimate chances of survival using facet_grid


ggplot(titanic, aes(factor(Pclass), fill = factor(Sex))) +

  geom_bar(position = "dodge") +

  facet_grid(". ~ Survived")




# Position jitter (use below)

posn.j <- position_jitter(0.5, 0)



# Use ggplot() for the last instruction

# Using Age


ggplot(titanic, aes(factor(Pclass), Age, col = factor(Sex))) +

  geom_jitter(position = posn.j, size = 3, alpha = 0.5) +

  facet_grid(". ~ Survived")










