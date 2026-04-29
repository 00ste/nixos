{
	programs.alacritty = {
		enable = true;
		settings = {
      window.dimensions = {
        columns = 80;
        lines = 44;
      };
      window.opacity = 0.85;

      font = {
        size = 11.0;
        normal = {
          family = "Lilex";
          style = "medium";
        };
        bold = {
          family = "Lilex";
          style = "bold";
        };
        italic = {
          family = "Lilex";
          style = "medium italic";
        };
        bold_italic = {
          family = "Lilex";
          style = "bold italic";
        };
      };

      colors.primary = {
        background = "#0b0e14";
        foreground = "#bfbdb6";
      };
      colors.cursor = {
        text = "#0b0e14";
        cursor = "#bfbdb6";
      };
      colors.normal = {
        black = "#11151c";
        red = "#ea6c73";
        green = "#7fd962";
        yellow = "#f9af4f";
        blue = "#53bdfa";
        magenta = "#cda1fa";
        cyan = "#90e1c6";
        white = "#c7c7c7";
      };
      colors.bright = {
        black = "#686868";
        red = "#f07178";
        green = "#aad94c";
        yellow = "#ffb454";
        blue = "#59c2ff";
        magenta = "#d2a6ff";
        cyan = "#95e6cb";
        white = "#ffffff";
      };
	  };
  };
}
