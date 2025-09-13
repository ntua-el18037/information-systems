import pandas as pd
import matplotlib.pyplot as plt
import numpy as np

# Data manually entered from your benchmark results (mean wall time in seconds)
data = {
    "Query": ["Q1", "Q10", "Q13", "Q19", "Q35", "Q54", "Q76", "Q94"],
    "Cassandra": [3267, 32822, 20917, 11955, 31392, 23809, 22387, 6747],
    "MongoDB": [1637, 6906, 10122, 6224, 8161, 6560, 3116, 2003],
    "Postgres": [1322, 3989, 5957, 3052, 3482, 3034, 906, 1547],
}

df = pd.DataFrame(data)

# --- 1. Per-query bar chart ---
df.plot(x="Query", y=["Cassandra", "MongoDB", "Postgres"], kind="bar")
plt.ylabel("Mean Runtime (ms)")
plt.title("Per-query Mean Runtime Comparison")
plt.xticks(rotation=0)
plt.tight_layout()
plt.savefig("runtime_perquery.png")
plt.clf()

# --- 2. Average runtime bar chart ---
avg_times = df[["Cassandra", "MongoDB", "Postgres"]].mean()
avg_times.plot(kind="bar", color=["red","orange","green"])
plt.ylabel("Average Runtime (ms)")
plt.title("Average Runtime Across Queries")
plt.tight_layout()
plt.savefig("runtime_avg.png")
plt.clf()

# --- 3. Standard deviation bar chart ---
std_times = df[["Cassandra", "MongoDB", "Postgres"]].std()
std_times.plot(kind="bar", color=["red","orange","green"])
plt.ylabel("Runtime StdDev (ms)")
plt.title("Runtime Variability Across Queries")
plt.tight_layout()
plt.savefig("runtime_stddev.png")
plt.clf()

# --- 4. CPU time comparison (using process CPU mean) ---
cpu_data = {
    "Query": ["Q1", "Q10", "Q13", "Q19", "Q35", "Q54", "Q76", "Q94"],
    "Cassandra": [10523, 57663, 64246, 27180, 50620, 40160, 31286, 13626],
    "MongoDB": [16123, 26163, 28300, 9436, 24576, 15760, 6626, 8276],
    "Postgres": [9936, 14190, 24473, 7876, 15246, 10686, 4133, 5586],
}
cpu_df = pd.DataFrame(cpu_data)

cpu_df.plot(x="Query", y=["Cassandra", "MongoDB", "Postgres"], kind="bar")
plt.ylabel("Process CPU Time (ms)")
plt.title("CPU Time Comparison")
plt.xticks(rotation=0)
plt.tight_layout()
plt.savefig("cpu_perquery.png")
plt.clf()

# --- 5. Radar chart ---
import matplotlib.pyplot as plt
from math import pi

categories = list(df["Query"])
N = len(categories)

# normalize times (lower is better, invert scale for radar)
def normalize(series):
    return (series.max() - series) / (series.max() - series.min())

values_c = list(normalize(df["Cassandra"]))
values_m = list(normalize(df["MongoDB"]))
values_p = list(normalize(df["Postgres"]))

angles = [n / float(N) * 2 * pi for n in range(N)]
values_c += values_c[:1]
values_m += values_m[:1]
values_p += values_p[:1]
angles += angles[:1]

plt.figure(figsize=(6,6))
ax = plt.subplot(111, polar=True)

plt.xticks(angles[:-1], categories)

ax.plot(angles, values_c, linewidth=2, label="Cassandra", color="red")
ax.fill(angles, values_c, alpha=0.2, color="red")

ax.plot(angles, values_m, linewidth=2, label="MongoDB", color="orange")
ax.fill(angles, values_m, alpha=0.2, color="orange")

ax.plot(angles, values_p, linewidth=2, label="Postgres", color="green")
ax.fill(angles, values_p, alpha=0.2, color="green")

plt.title("Normalized Performance Radar Chart")
plt.legend(loc="upper right", bbox_to_anchor=(1.2, 1.1))
plt.tight_layout()
plt.savefig("radar_performance.png")
plt.clf()
