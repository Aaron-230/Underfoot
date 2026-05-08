
# Underfoot

**Underfoot** is a high-stakes 2D pursuit platformer where movement is survival. Players must navigate treacherous terrain while being hunted by a "Sentinel" that tracks, jumps, and adapts to the environment in real-time.

### 📍 Where to use it

-   **Web (Primary):** Playable instantly in any modern browser via itch.io. This version is optimized for Chrome, Firefox, and Edge.
    
-   **Compatibility:** Designed for Desktop browsers with keyboard support.
    

----------

### 🛠 Built With

-   **Engine:** [Godot Engine 4.x](https://godotengine.org/)
    
-   **Language:** GDScript
    
-   **Physics:** Godot 2D Physics Engine.
    
-   **Systems:** Raycast-based edge detection and proximity-based target acquisition.
    

----------

### 🎮 Demo

![enter image description here](https://github.com/Aaron-230/Underfoot/blob/main/Images/image.png)

<iframe frameborder="0" src="https://itch.io/embed/4552405?bg_color=222222&amp;fg_color=eeeeee&amp;link_color=0484d1&amp;border_color=4e4e4e" width="552" height="167"><a href="https://aaron-230.itch.io/underfoot">Underfoot by Aaron-230</a></iframe>
----------

### 🤝 How to Contribute

We welcome contributions to refine the Sentinel's behavior and level design!

1.  **Fork** the project.
    
2.  **Create a Feature Branch** (`git checkout -b feature/ImprovedAI`).
    
3.  **Commit your Changes** (`git commit -m 'Added Coyote Time to player movement'`).
    
4.  **Push to the Branch** (`git push origin feature/ImprovedAI`).
    
5.  **Open a Pull Request**.
    

**Roadmap for Contributors:**

-   Implementing "Coyote Time" for more forgiving platforming.
    
-   Refining AI pathfinding on moving platforms.
    
-   Adding sound triggers for jumping and landing.
    

----------

### 🚀 Deployment (Web Only)

To deploy the latest version of **Underfoot** to itch.io:

1.  **Export Settings:** * In Godot, go to **Project > Export** and select the **Web** preset.
    
    -   Set **VRAM Compression** to `Mobile` (ensures faster loading on the web).
        
    -   Ensure **Export With Debug** is unchecked for the final upload.
        
2.  **File Prep:**
    
    -   Export as `index.html`.
        
    -   Select all generated files (`index.html`, `index.js`, `index.pck`, etc.) and compress them into a **flat ZIP** (do not zip a folder; zip the files directly).
        
3.  **itch.io Configuration:**
    
    -   Upload the ZIP and select **"This file will be played in the browser."**
        
    -   **Crucial:** Enable **"SharedArrayBuffer support"** in the itch.io dashboard, or the game will not load.
