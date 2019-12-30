import pandas as pd
import matplotlib.pyplot as plt

dataset = pd.read_csv("reviews.csv")

summarised_results = dataset["stars"].value_counts()
summarised_results.plot.bar()
plt.show()
