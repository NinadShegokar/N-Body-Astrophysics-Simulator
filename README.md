# 🌌 N-Body Astrophysics Simulator

A **gravitational N-body simulation** implemented in **Julia**, modeling the motion of celestial bodies using **Newtonian mechanics** and **ordinary differential equations (ODEs)**. This project explores **orbital dynamics**, **chaotic motion**, and the **stability of celestial systems** through numerical simulations and interactive visualizations.

---

## 🧑‍🔬 Mathematical Foundation

### 🌍 Newtonian Gravity
The gravitational force between two particles $i$ and $j$ is given by:

$$
\mathbf{F}_{ij} = G \frac{m_i m_j}{|\mathbf{r}_{ij}|^3} \mathbf{r}_{ij} 
$$

where:
- $G$ is the gravitational constant,
- $m_i$ and $m_j$ are the masses of the particles,
- $\mathbf{r}_{ij} = \mathbf{r}_j - \mathbf{r}_i$ is the displacement vector between the particles.

### 🚀 Equations of Motion
The motion of each particle follows Newton’s second law:

$$
\frac{d^2 \mathbf{r}_i}{dt^2} = \sum_{j \neq i} \mathbf{F}_{ij}
$$

For numerical solving, we split this into two first-order ODEs:

$$
\frac{d\mathbf{r}_i}{dt} = \mathbf{v}_i, \quad \frac{d\mathbf{v}_i}{dt} = \sum_{j \neq i} \mathbf{F}_{ij}
$$

---

## 🏠 Code Structure

The project is organized into modular components for clarity and scalability:

### 📝 `simulation.jl`
- The main script that initializes the system, solves the ODEs, and generates visualizations.

### 📏 `nbody_solver.jl`
- Contains the core ODE function and solver setup.
- Uses **high-performance numerical methods** to accurately model gravitational interactions.

### 🎥 `visualization.jl`
- Handles the creation of **interactive 3D animations (GIFs)** to visualize the system’s evolution.
- Highlights the motion of the central star and orbiting planets.

### 🛋️ Dependencies
This project relies on the following Julia packages:
- **`DifferentialEquations.jl`** → Solves the system of ODEs efficiently.
- **`Plots.jl`** → Creates dynamic visualizations.
- **`StaticArrays.jl`** → Optimizes memory usage and performance.

---

## 🔬 Results

### ☀️ Central Star
A massive particle at the center, dominating the gravitational field.

### 🪐 Orbiting Planets
49 particles with unique initial conditions, demonstrating:
- **Elliptical orbits** for particles near the central star.
- **Chaotic motion** for particles farther away.

### 🎮 Visualizations
**Interactive 3D animations (GIFs)** capture the system’s evolution over time, showcasing the **beauty and complexity** of gravitational interactions.

---

## ⚖️ License
This project is licensed under the **MIT License**. See [LICENSE](LICENSE) for details.

---

Enjoy exploring the cosmos! 🚀✨
