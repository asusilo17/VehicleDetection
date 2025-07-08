import matplotlib.pyplot as plt
import seaborn as sns
import numpy as np
import pandas as pd

# --- Data Confusion Matrix ---
TP = 167
FN = 1
FP = 2
TN = 0

# Confusion matrix numerik
cm = np.array([[TP, FN],
               [FP, TN]])

# Buat DataFrame agar heatmap lebih rapi
df_cm = pd.DataFrame(cm,
                     index=['Actual Positive', 'Actual Negative'],
                     columns=['Predicted Positive', 'Predicted Negative'])

# --- Perhitungan Metrik Evaluasi ---
precision = TP / (TP + FP) if (TP + FP) > 0 else 0
recall = TP / (TP + FN) if (TP + FN) > 0 else 0
f1 = 2 * precision * recall / (precision + recall) if (precision + recall) > 0 else 0

# --- Visualisasi Confusion Matrix Heatmap ---
plt.figure(figsize=(7, 5))
sns.heatmap(df_cm, annot=True, fmt='d', cmap='Blues', cbar=False,
            linewidths=1, linecolor='white')
plt.title("Confusion Matrix (Heatmap)")
plt.xlabel("Predicted Label")
plt.ylabel("Actual Label")
plt.tight_layout()
plt.show()

# --- Visualisasi Evaluation Metrics ---
metrics = ['Precision', 'Recall', 'F1 Score']
values = [precision, recall, f1]

plt.figure(figsize=(6, 4))
sns.barplot(x=metrics, y=values, palette='viridis')
plt.ylim(0, 1.1)
plt.title("Evaluation Metrics")
for i, v in enumerate(values):
    plt.text(i, v + 0.02, f"{v:.3f}", ha='center')
plt.tight_layout()
plt.show()

# --- Print Angka Metrik (Opsional) ---
print("=== Evaluation Metrics ===")
print(f"Precision: {precision:.3f}")
print(f"Recall   : {recall:.3f}")
print(f"F1 Score : {f1:.3f}")
