# Auto-Wallpaper

Auto-Wallpaper is a simple Bash script designed to automatically change your desktop wallpaper based on the time of day. This script is designed to work with **X11** and uses the `feh` tool to set the wallpaper. 

### It's a very simple script, so you can easily dive into the code and customize it however you like!

## Features

- **Automatic Wallpaper Change**: The wallpaper automatically changes based on the time of day.
- **X11 Support**: This script is designed to work on X11-based systems, typically with window managers like **i3** or **Openbox**.
- **Customizable**: You can change the wallpaper images or adjust the time intervals in the script to suit your needs.

## Wallpaper Time Schedule

- **Day (6 AM to 3 PM)**: Displays "Day.jpg"
- **Afternoon (3 PM to 6 PM)**: Displays "Aprem.jpg"
- **Sunset (6 PM to 7 PM)**: Displays "Sunset.jpg"
- **Night (7 PM to 6 AM)**: Displays "Night.jpg"

## Requirements

- **feh**: A lightweight image viewer that allows you to set wallpapers from the command line.
- **X11**: The script is specifically designed for systems running X11. It does not support Wayland-based setups (e.g., GNOME on Wayland, Sway).
  
## Installation

1. Clone or download this repository to your local machine.
   
   ```bash
   git clone https://github.com/mxmchrbrt/Auto-Wallpaper.git
   ```

2. You can change the directory in the script by modifying the `wallpaper_dir` variable.

3. Make the script executable:

   ```bash
   chmod +x ~/Auto-Wallpaper/auto-wallpaper.sh
   ```

4. Add the script to your X11 startup process (e.g., in your i3 config):

   ```bash
   exec --no-startup-id ~/Auto-Wallpaper/auto-wallpaper.sh
   ```

5. Restart your X11 session or reload your window manager configuration.

## Usage

Once the script is running, it will check the time every minute and update the wallpaper accordingly:

- From 6:00 AM to 3:00 PM, the wallpaper will be **Day.jpg**.
- From 3:00 PM to 6:00 PM, the wallpaper will be **Aprem.jpg**.
- From 6:00 PM to 7:00 PM, the wallpaper will be **Sunset.jpg**.
- From 7:00 PM to 6:00 AM, the wallpaper will be **Night.jpg**.

The script runs in the background and updates the wallpaper every minute.

### Preview:

- **Day**  
  ![Day.jpg](./Day.jpg)

- **Afternoon**  
  ![Aprem.jpg](./Aprem.jpg)

- **Sunset**  
  ![Sunset.jpg](./Sunset.jpg)
  
- **Night**  
  ![Night.jpg](./Night.jpg)

## Contributing

Feel free to fork the repository and submit pull requests if you would like to add new features or improve the code. If you encounter any issues or have questions, please open an issue in the GitHub repository.

## License

This project is open-source and available under the [MIT License](LICENSE).

---
