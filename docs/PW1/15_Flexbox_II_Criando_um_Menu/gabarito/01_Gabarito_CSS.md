# Gabarito CSS - Flexbox II

Material de apoio para professor.

```css
* {
  box-sizing: border-box;
}

body {
  margin: 0;
  font-family: Arial, sans-serif;
  background-color: #f5f7fa;
  color: #1f2937;
}

.topo-site {
  background-color: #1d3557;
  color: #ffffff;
  text-align: center;
  padding: 18px;
}

.topo-site h1 {
  margin: 0;
}

.hero {
  background-color: #a8dadc;
  text-align: center;
  padding: 40px 20px;
}

.hero h2 {
  margin-top: 0;
}

.rodape-site {
  text-align: center;
  padding: 16px;
  background-color: #e5e7eb;
}

.destaques {
  padding: 24px;
  text-align: center;
}

.cards {
  display: flex;
  gap: 12px;
  justify-content: center;
}

.card {
  background-color: #ffffff;
  padding: 16px;
  border-radius: 8px;
  min-width: 150px;
}

@media (max-width: 768px) {
  .cards {
    flex-direction: column;
    align-items: center;
  }
}
```
