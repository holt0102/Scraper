import pandas as pd
import matplotlib as plt

pd.read_csv("reviews.csv")

summarised_results = pd.dataset["stars"].value_counts()
plt.bar(summarised_results.keys(), summarised_results.values)
plt.show()
