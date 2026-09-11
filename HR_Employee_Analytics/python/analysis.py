import pandas as pd
import matplotlib.pyplot as plt
df=pd.read_csv("../data/hr_employees.csv")
df["AttritionFlag"]=(df.Attrition=="Yes").astype(int)
print("Attrition Rate:",round(df.AttritionFlag.mean()*100,2),"%")
print(df.groupby("Department").AttritionFlag.mean().mul(100).round(2))
print(df.groupby("OverTime").AttritionFlag.mean().mul(100).round(2))
df.groupby("Department").AttritionFlag.mean().mul(100).plot(kind="bar",title="Attrition by Department")
plt.ylabel("Attrition %"); plt.tight_layout(); plt.savefig("attrition_by_department.png",dpi=150); plt.show()
